cmake_minimum_required(VERSION 3.16)

set(SOURCE
        Client.h
        Client.cpp
)

add_subdirectory(UserData)

add_library(Client ${SOURCE})

target_link_libraries(Client
        Qt
        UserData
)

target_include_directories(Client PUBLIC ./)
