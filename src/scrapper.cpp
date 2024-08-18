#include "scrapper.h"

#include <curl/curl.h>
#include <regex>

#define MAX_SEARCH_LEVEL 3
static const std::regex email_pattern(R"((\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b))");


// Function to handle HTTP response data
size_t WriteCallback(void* contents, size_t size, size_t nmemb, std::string* s) {
    size_t totalSize = size * nmemb;
    s->append(static_cast<char*>(contents), totalSize);
    return totalSize;
}

/*
void searchSubUrls(GumboNode* node, std::vector<std::string> subUrls) {
    if (node->type != GUMBO_NODE_ELEMENT) {
        return;
    }

    GumboAttribute* href;
    if (node->v.element.tag == GUMBO_TAG_A && (href = gumbo_get_attribute(&node->v.element.attributes, "href"))) {
        std::cout << "Found sub url: " << href->value << "\n";
    }

    const GumboVector* children = &node->v.element.children;
    for (unsigned int i = 0; i < children->length; ++i) {
        searchSubUrls(static_cast<GumboNode*>(children->data[i]));
    }
}
*/


void findEmails(const std::string &html, Website &website) {
    std::cout << "Trazim" << std::endl;
    std::vector<std::string> emails;

    auto begin = std::sregex_iterator(html.begin(), html.end(), email_pattern);
    auto end = std::sregex_iterator();

    for (auto it = begin; it != end; ++it) {
        website.emails.push_back(std::move(it->str()));
    }
}


boost::asio::awaitable<void> searchUrl(Website &website, bool index) {
    try {
        auto executor = co_await boost::asio::this_coro::executor;
        boost::asio::ip::tcp::resolver resolver(executor);
        boost::beast::tcp_stream stream(executor);

        auto const results = co_await resolver.async_resolve(website.url, "80", boost::asio::use_awaitable);
        co_await stream.async_connect(results, boost::asio::use_awaitable);

        boost::beast::http::request<boost::beast::http::string_body> req{
            boost::beast::http::verb::get, "/", 11
        };
        req.set(boost::beast::http::field::host, website.url);
        req.set(boost::beast::http::field::user_agent, BOOST_BEAST_VERSION_STRING);

        co_await boost::beast::http::async_write(stream, req, boost::asio::use_awaitable);

        boost::beast::flat_buffer buffer;
        boost::beast::http::response<boost::beast::http::dynamic_body> res;
        co_await boost::beast::http::async_read(stream, buffer, res, boost::asio::use_awaitable);

        //std::cout << res << std::endl;

        const auto& body = res.body();
        std::string html{boost::beast::buffers_to_string(body.data())};
        //std::cout << "HTML Content Fetched: " << html << std::endl;

        boost::beast::error_code ec;
        boost::system::error_code ec2 = stream.socket().shutdown(boost::asio::ip::tcp::socket::shutdown_both, ec);

        // Parse the HTML content
        GumboOutput* output = gumbo_parse(html.c_str());
        GumboNode *root = output->root;
        if (index) {
            std::cout << "TU SAM" << std::endl;
            const GumboVector* children = &root->v.element.children;
            for (unsigned int i = 0; i < children->length; ++i) {
                std::cout << "TU SAM 2" << std::endl;
                GumboNode *node = static_cast<GumboNode*>(children->data[i]);
                if (node->type != GUMBO_NODE_ELEMENT) {
                    continue;
                }

                GumboAttribute* href;
                if (node->v.element.tag == GUMBO_TAG_A && (href = gumbo_get_attribute(&node->v.element.attributes, "href"))) {
                    std::cout << "Found sub url: " << href->value << "\n";
                    website.subUrls.push_back(std::move(href->value));
                }
            }
        }

        findEmails(html, website);
        if (!website.subUrls.empty()) {
            std::cout << "Ima pod urla" << std::endl;
            for (auto url: website.subUrls)
                co_await searchUrl(website, false);
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
        for (auto &email : website.emails) {
            std::cout << "Found email:" << email << std::endl;
        }
    }
}

