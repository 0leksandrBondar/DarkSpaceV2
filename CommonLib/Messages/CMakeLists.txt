cmake_minimum_required(VERSION 3.16)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

set(SOURCE Message.cpp
        Message.h
        TextMessage.cpp
        TextMessage.h
        MessageFactory.cpp
        MessageFactory.h
)

add_library(Messages ${SOURCE})

target_link_libraries(Messages
        Qt
)
target_include_directories(Messages PUBLIC ./)