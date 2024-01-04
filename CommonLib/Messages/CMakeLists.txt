cmake_minimum_required(VERSION 3.16)

set(SOURCE Message.cpp
        Message.h
        TextMessage.cpp
        TextMessage.h
)

add_library(Message ${SOURCE})

target_include_directories(Message PUBLIC ./)