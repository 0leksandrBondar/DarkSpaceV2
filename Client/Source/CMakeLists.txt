cmake_minimum_required(VERSION 3.16)

project(DarkSpace)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

set(SOURCES
        Main.cpp
        AppGui/qml.qrc
)

add_custom_target(Resource)

add_custom_command(TARGET Resource PRE_BUILD
        COMMAND ${CMAKE_COMMAND} -E remove_directory ${CMAKE_CURRENT_BINARY_DIR}/Resource
        COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_CURRENT_BINARY_DIR}/Resource
        COMMAND ${CMAKE_COMMAND} -E copy_directory
        ${CMAKE_SOURCE_DIR}/Resource
        ${CMAKE_CURRENT_BINARY_DIR}/Resource)

add_custom_target(
        Copy-Assets
        COMMAND ${CMAKE_COMMAND} -E remove_directory ${CMAKE_CURRENT_BINARY_DIR}/Resource
        COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_CURRENT_BINARY_DIR}/Resource
        COMMAND ${CMAKE_COMMAND} -E copy_directory
        ${CMAKE_SOURCE_DIR}/Resource
        ${CMAKE_CURRENT_BINARY_DIR}/Resource
)

add_executable(DarkSpace ${SOURCES})

add_dependencies(DarkSpace Resource)

target_link_libraries(${PROJECT_NAME}
        Qt
        Client
)

add_subdirectory(Client)
