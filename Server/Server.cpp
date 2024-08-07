#include "Server.h"

Server::Server(const SocketAddress& address)
{
    _socket.bind(address);
}

Server::~Server() {}

void Server::acceptConnections()
{
    while (true)
    {
        sockaddr_in clientAddress;
        socklen_t clientAddressLength = sizeof(clientAddress);
        _activeSocket = ::accept(_activeSocket, reinterpret_cast<sockaddr*>(&clientAddress),
                                 &clientAddressLength);
    }
}

void Server::listen() { _socket.listen(); }

void Server::handleIncomingConnection()
{
    while (true)
    {
    }
}

void Server::checkClientsOnDisconnect()
{
    while (true)
    {
    }
}
