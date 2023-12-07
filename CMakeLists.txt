cmake_minimum_required(VERSION 3.16)

project(DarkSpace)

include(cmake/deploy.cmake)

add_subdirectory(Tests)
add_subdirectory(Client)
add_subdirectory(Server)
add_subdirectory(Dependencies)
