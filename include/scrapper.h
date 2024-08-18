#include <vector>
#include <string>
#include <iostream>
#include <unistd.h>
#include <boost/asio.hpp>
#include <boost/beast.hpp>
#include <gumbo.h>


typedef struct Website {
    std::string url;
    std::vector<std::string> subUrls;
    std::vector<std::string> emails;
} Website;

size_t WriteCallback(void* contents, size_t size, size_t nmemb, std::string* s);

//void searchSubUrls(GumboNode* node);

void findEmails(const std::string &body, Website &website);

boost::asio::awaitable<void> searchUrl(Website &website, bool index = true);

boost::asio::awaitable<void> scrapeWebsite(Website &website);

