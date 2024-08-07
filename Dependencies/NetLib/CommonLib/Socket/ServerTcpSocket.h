#pragma once

#include "ClientTcpSocket.h"
#include "Socket.h"

#include <vector>

struct ClientSocket
{
    std::string nameId;
    SOCKET socketDescriptor;
};

class ServerTcpSocket : public Socket
{
public:
    explicit ServerTcpSocket(AddressFamily addressFamily = AddressFamily::IPv4,
                             Protocol protocol = Protocol::Auto);
    ~ServerTcpSocket();

    void bind(const SocketAddress& socketAddress);
    void listen();
    void processingRcv();
    SOCKET acceptConnections();


private:
    SOCKET _connectedClient;
    sockaddr_in _boundAddress;
};
