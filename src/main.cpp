#include "scrapper.h"

int main() {
    //std::vector<std::string> urls = {"mixpakrecords.com", "newyorkvoices.com", "jewelswebs.com", "jojomayer.com"};
    std::vector<Website> websites = {Website{"mixpakrecords.com"}};
    boost::asio::io_context io_context;
    for (auto& website : websites) {
        try {
            std::cout << "Fetching " << website.url << "\n";
            boost::asio::co_spawn(io_context, searchUrl(website), boost::asio::detached);
        } catch (std::exception& e) {
            std::cerr << "Exception with url " << website.url << " :" << e.what() << std::endl;
        }
    }
    io_context.run();
    return 0;
}
