set(SOURCE
        Protocol/Protocol.h
        Utils/WSA_Utils.h
        Utils/WSA_Utils.cpp
        ISingleton/ISingleton.h
        ISingleton/ISingleton.cpp
        Socket/Socket.h
        Socket/Socket.cpp
        Socket/ClientTcpSocket.h
        Socket/ClientTcpSocket.cpp
        Socket/ServerTcpSocket.h
        Socket/ServerTcpSocket.cpp
        Socket/SocketAddress.h
        Socket/SocketAddress.cpp
)

add_library(NetLib ${SOURCE})

target_include_directories(NetLib PUBLIC ./)

target_link_libraries(NetLib
        ws2_32
)
