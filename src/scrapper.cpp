#include "scrapper.h"
#include <boost/asio.hpp>
#include <boost/asio/ssl.hpp>
#include <boost/beast.hpp>
#include <iostream>
#include <string>
#include <vector>
#include <regex>
#include <gumbo.h>

#define MAX_SEARCH_LEVEL 3
static const std::regex email_pattern(R"((\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b))");

// Function to handle HTTP response data
size_t WriteCallback(void* contents, size_t size, size_t nmemb, std::string* s) {
    size_t totalSize = size * nmemb;
    s->append(static_cast<char*>(contents), totalSize);
    return totalSize;
}

void findEmails(const std::string &html, Website &website) {
    std::cout << "Finding emails..." << std::endl;
    std::vector<std::string> emails;

    auto begin = std::sregex_iterator(html.begin(), html.end(), email_pattern);
    auto end = std::sregex_iterator();

    for (auto it = begin; it != end; ++it) {
        website.emails.push_back(it->str());
    }
}

boost::asio::awaitable<void> searchUrl(Website &website, bool index) {
    try {
        const std::string httpPrefix = "http://";
        const std::string httpsPrefix = "https://";

        if (website.url.find(httpPrefix) == 0) {
            website.url = website.url.substr(httpPrefix.length());
        }

        if (website.url.find(httpsPrefix) == 0) {
            website.url = website.url.substr(httpsPrefix.length());
        }

        auto executor = co_await boost::asio::this_coro::executor;
        boost::asio::ip::tcp::resolver resolver(executor);

        // Setup SSL context
        boost::asio::ssl::context ctx{boost::asio::ssl::context::tls_client};
        ctx.set_default_verify_paths();

        // Create SSL stream
        boost::asio::ssl::stream<boost::asio::ip::tcp::socket> stream{executor, ctx};

        // Resolve and connect
        auto const results = co_await resolver.async_resolve(website.url, "443", boost::asio::use_awaitable);
        co_await boost::asio::async_connect(stream.next_layer(), results, boost::asio::use_awaitable);

        // Perform SSL handshake
        boost::beast::error_code ec;
        co_await stream.async_handshake(boost::asio::ssl::stream_base::client, boost::asio::redirect_error(boost::asio::use_awaitable, ec));
        if (ec) {
            std::cerr << "Handshake failed: " << ec.message() << std::endl;
            co_return;
        }

        // Prepare and send HTTP request
        boost::beast::http::request<boost::beast::http::string_body> req{
            boost::beast::http::verb::get, "/", 11
        };
        req.set(boost::beast::http::field::host, website.url);
        req.set(boost::beast::http::field::user_agent, BOOST_BEAST_VERSION_STRING);

        co_await boost::beast::http::async_write(stream, req, boost::asio::use_awaitable);

        // Receive HTTP response
        boost::beast::flat_buffer buffer;
        boost::beast::http::response<boost::beast::http::dynamic_body> res;
        co_await boost::beast::http::async_read(stream, buffer, res, boost::asio::use_awaitable);

        const auto& body = res.body();
        std::string html{boost::beast::buffers_to_string(body.data())};
        std::cout << "HTML Content Fetched: " << html << std::endl;

        // Shutdown SSL stream
        co_await stream.async_shutdown(boost::asio::redirect_error(boost::asio::use_awaitable, ec));
        if (ec) {
            std::cerr << "Shutdown failed: " << ec.message() << std::endl;
        }

        // Parse the HTML content
        GumboOutput* output = gumbo_parse(html.c_str());
        GumboNode *root = output->root;
        if (index) {
            std::cout << "Parsing for links..." << std::endl;
            // Function to recursively search for <a> tags
            std::function<void(GumboNode*)> searchForLinks = [&](GumboNode* node) {
                if (node->type != GUMBO_NODE_ELEMENT) {
                    return;
                }

                // Check if the current node is an <a> tag
                if (node->v.element.tag == GUMBO_TAG_A) {
                    GumboAttribute* href = gumbo_get_attribute(&node->v.element.attributes, "href");
                    if (href) {
                        if (std::string(href->value).find(website.url) != std::string::npos) {
                            std::cout << "Found sub URL: " << href->value << "\n";
                            website.subUrls.push_back(href->value);
                        }
                    }
                }

                // Recursively search the children of the current node
                const GumboVector* children = &node->v.element.children;
                for (unsigned int i = 0; i < children->length; ++i) {
                    searchForLinks(static_cast<GumboNode*>(children->data[i]));
                }
            };

            // Start searching from the root node
            searchForLinks(root);
        }


        findEmails(html, website);
        if (!website.subUrls.empty()) {
            std::cout << "Processing sub URLs..." << std::endl;
            for (const auto& url : website.subUrls) {
                Website subWebsite{url};
                co_await searchUrl(subWebsite, false);
            }
        }

        gumbo_destroy_output(&kGumboDefaultOptions, output);

    } catch (std::exception& e) {
        std::cerr << "Error with fetchUrl " << website.url << ": " << e.what() << std::endl;
    }
}

// Function to perform an HTTP GET request and return the response as a string
boost::asio::awaitable<void> scrapeWebsite(Website &website) {
    co_await searchUrl(website, false);
    if (!website.emails.empty()) {
        for (const auto &email : website.emails) {
            std::cout << "Found email: " << email << std::endl;
        }
    }
}
