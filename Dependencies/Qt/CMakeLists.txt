cmake_minimum_required(VERSION 3.16)

find_package(Qt6 COMPONENTS Core Quick Network REQUIRED)

add_library(Qt INTERFACE)

target_link_libraries(Qt INTERFACE
        Qt6::Core
        Qt6::Network
        Qt6::Quick
)