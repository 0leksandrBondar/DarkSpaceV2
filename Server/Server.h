#pragma once

#include "Socket/ServerTcpSocket.h"

class Server
{
public:
    Server(const SocketAddress& address);
    ~Server();

    void listen();
    void acceptConnections();
    void checkClientsOnDisconnect();
    void handleIncomingConnection();

private:
    ServerTcpSocket _socket;
    SOCKET _activeSocket = INVALID_SOCKET;
    std::vector<SOCKET> _connectedClients;
};
