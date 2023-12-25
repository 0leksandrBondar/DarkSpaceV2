cmake_minimum_required(VERSION 3.16)

set(userDataSources
        include/UserData.h
        source/UserData.cpp
)

add_library(UserData ${userDataSources})

target_include_directories(UserData PUBLIC ./include)

target_link_libraries(UserData Qt)