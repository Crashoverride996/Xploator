#include <iostream>
#include <vector>
#include <sys/un.h>
#include <sys/socket.h>
#include <cstring>
#include <unistd.h>

#include "utils.h"
#include "scrapper.h"


#define SOCKET_PATH "/tmp/scrapper_socket"

int server() {
    int server_fd, client_fd;
    struct sockaddr_un addr;
    char buffer[4096];
    const char *response = "Processed data";

    memset(buffer, 0, sizeof(buffer));

    server_fd = socket(AF_UNIX, SOCK_STREAM, 0);
    if (server_fd < 0) {
        std::cerr << "Socket creation error\n";
        return 1;
    }

    addr.sun_family = AF_UNIX;
    strcpy(addr.sun_path, SOCKET_PATH);
    unlink(SOCKET_PATH);

    if (bind(server_fd, (struct sockaddr*)&addr, sizeof(addr)) < 0) {
        std::cerr << "Bind error\n";
    }
    
    listen(server_fd, 1);
    client_fd = accept(server_fd, NULL, NULL);
    if (client_fd < 0) {
        std::cerr << "Accept error\n";
        return 1;
    }

    // std::vector<std::string> urls = {"https://google.com"};
    // std::string test = serialize(urls);
    // std::cout << test << "\n";
    std::string serialized;

    while (true) {
        ssize_t bytesRead = read(client_fd, buffer, sizeof(buffer));
        if (bytesRead > 0) {
            buffer[bytesRead] = '\0';
            serialized = buffer;
            std::cout << "received message: " << buffer << "\n";
            memset(buffer, 0, sizeof(buffer));
        } else if (bytesRead == 0) {
            std::cout << "Connection closed by the client.\n";
            break;
        } else {
            std::cerr << "Read error... closing";
            break;
        }
    }

    std::vector<std::string> urls = deserialize(serialized);

    write(client_fd, response, strlen(response));
    close(client_fd);
    close(server_fd);
    unlink(SOCKET_PATH);

    return 0;
}
