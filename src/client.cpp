#include <iostream>
#include <sys/socket.h>
#include <sys/un.h>
#include <unistd.h>
#include <cstring>
#include <thread>
#include <chrono>
#include <vector>

#include "utils.h"

#define SOCKET_PATH "/tmp/scrapper_socket"


int server(int argc, char *argv[]) {
    int sock_fd;
    struct sockaddr_un addr;
    //const char* message = "Hello from C++ client";
    char buffer[100];

    sock_fd = socket(AF_UNIX, SOCK_STREAM, 0);
    if (sock_fd < 0) {
        std::cerr << "Socket creation error" << std::endl;
        return 1;
    }

    addr.sun_family = AF_UNIX;
    strcpy(addr.sun_path, SOCKET_PATH);

    if (connect(sock_fd, (struct sockaddr*)&addr, sizeof(addr)) < 0) {
        std::cerr << "Connection error" << std::endl;
        return 1;
    }

    // Send a message to the server
    // for (int i = 1; i < argc; i++) {
    //     std::cout << "Sending " << argv[i] << "\n";
    //     write(sock_fd, argv[i], strlen(argv[i]));
    //     std::this_thread::sleep_for(std::chrono::seconds(1));
    // } 
    std::vector<std::string> urls = {"https://google.com", "http://test.com"};
    std::string serialized = serialize(urls);
    write(sock_fd, serialized.c_str(), serialized.size());
    shutdown(sock_fd, SHUT_WR);

    // Read the response from the server
    ssize_t bytes_read = read(sock_fd, buffer, sizeof(buffer) - 1);
    if (bytes_read < 0) {
        std::cerr << "Read error" << std::endl;
        return 1;
    }
    buffer[bytes_read] = '\0'; // Null-terminate the string

    std::cout << "Response from server: " << buffer << std::endl;

    close(sock_fd);
    return 0;
}
