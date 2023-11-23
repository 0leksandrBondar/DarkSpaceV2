cmake_minimum_required(VERSION 3.16)

set(SOURCE
        Server.h
        Server.cpp)

add_library(Server ${SOURCE})

target_link_libraries(Server
        Qt)

target_include_directories(Server PUBLIC ./)
