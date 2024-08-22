cmake_minimum_required(VERSION 3.10)
project(Xploator)

set(CMAKE_CXX_STANDARD 20)
set(SRC_DIR "${CMAKE_SOURCE_DIR}/src")

find_package(Boost REQUIRED COMPONENTS system)
find_package(CURL REQUIRED)
find_package(PkgConfig REQUIRED)
find_package(OpenSSL REQUIRED)
pkg_check_modules(GUMBO REQUIRED gumbo)
include_directories(include)

file(GLOB SRCS "${SRC_DIR}/*.cpp")

add_executable(Xploator ${SRCS})
target_include_directories(Xploator PRIVATE ${Boost_INCLUDE_DIRS} ${CURL_INCLUDE_DIRS} ${GUMBO_INCLUDE_DIRS})
target_link_libraries(Xploator PRIVATE ${Boost_LIBRARIES} ${CURL_LIBRARIES} ${GUMBO_LIBRARIES} OpenSSL::SSL)
