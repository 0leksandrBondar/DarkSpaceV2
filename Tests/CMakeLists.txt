cmake_minimum_required(VERSION 3.16)

project(Tests)

set(SOURCES
        test_main.cpp)

add_executable(Tests ${SOURCES})

target_link_libraries(Tests
        GTest::gtest
        GTest::gmock
)