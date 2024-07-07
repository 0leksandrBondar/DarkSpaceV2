cmake_minimum_required(VERSION 3.16)

project(DarkSpace)

include(cmake/deploy.cmake)

set(APP_GUI_RESOURCES_PATH ${CMAKE_SOURCE_DIR}/AppGui/qml.qrc)

add_subdirectory(Tests)
add_subdirectory(Client)
add_subdirectory(Server)
add_subdirectory(Dependencies)
