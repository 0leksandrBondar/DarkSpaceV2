cmake_minimum_required(VERSION 3.16)

project(ServerApp)

add_executable(ServerApp  Server.h Server.cpp Main.cpp)

target_link_libraries(ServerApp
        NetLib
        Qt)
