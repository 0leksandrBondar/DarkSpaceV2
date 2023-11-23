cmake_minimum_required(VERSION 3.16)

project(ServerApp)

add_executable(ServerApp Main.cpp)

target_link_libraries(ServerApp
        Server
        Qt)

add_subdirectory(Server)