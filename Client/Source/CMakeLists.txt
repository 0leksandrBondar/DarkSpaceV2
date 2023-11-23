cmake_minimum_required(VERSION 3.16)

project(DarkSpace)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

set(SOURCES
        Main.cpp
        AppGui/qml.qrc
)


add_executable(DarkSpace ${SOURCES})

target_link_libraries(${PROJECT_NAME}
        Qt
        Client
)

add_subdirectory(Client)