cmake_minimum_required(VERSION 3.14)

add_custom_target(MakeDeploy
        #TODO : remove the hardCode -  C:/Qt/6.6.0/msvc2019_64/bin/windeployqt6.exe
        COMMAND C:/Qt/6.6.0/msvc2019_64/bin/windeployqt6.exe --qmldir ${CMAKE_SOURCE_DIR}/Client/Source/AppGui ${CMAKE_BINARY_DIR}/Client/Source/DarkSpace.exe
        # is unnecessary yet
        # COMMAND C:/Qt/6.6.0/msvc2019_64/bin/windeployqt6.exe ${CMAKE_BINARY_DIR}/server/source/Program/ServerProgram.exe
)