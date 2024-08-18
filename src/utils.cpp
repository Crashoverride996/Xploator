#include "utils.h"
#include <vector>
#include <iostream>


std::string serialize(const std::vector<std::string>& strings) {
    std::string serialized;
    for (const auto& str : strings) {
        serialized += std::to_string(str.size()) + ":" + str + ",";
    }
    if (!serialized.empty()) {
        serialized.pop_back(); // Remove the last comma
    }
    return serialized;
}

std::vector<std::string> deserialize(const std::string& serialized) {
    std::vector<std::string> strings;
    size_t pos = 0;
    while (pos < serialized.size()) {
        size_t colon = serialized.find(':', pos);
        size_t length = std::stoi(serialized.substr(pos, colon - pos));
        pos = colon + 1;
        strings.push_back(serialized.substr(pos, length));
        pos += length;
    }
    return strings;
}

