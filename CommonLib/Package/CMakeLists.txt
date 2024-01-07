cmake_minimum_required(VERSION 3.16)

set(SOURCE
        Package.cpp
        Package.h
)

add_library(Package ${SOURCE})

target_link_libraries(Package
        Messages
)

target_include_directories(Package PUBLIC ./)