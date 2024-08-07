#include "ServerTcpSocket.h"
#include "SocketAddress.h"

ServerTcpSocket::ServerTcpSocket(AddressFamily addressFamily, Protocol protocol)
    : Socket(addressFamily, SocketType::Stream, protocol)
{
}

void ServerTcpSocket::bind(const SocketAddress& socketAddress)
{
    auto socketAddressIn = socketAddress.generateSocketAddressIn();

    if (::bind(_socketDescriptor, reinterpret_cast<sockaddr*>(&socketAddressIn),
               sizeof(socketAddressIn))
        == SOCKET_ERROR)
        std::cerr << "Server: Socket binding failed!\n";

    _boundAddress = socketAddressIn;
}

void ServerTcpSocket::listen()
{
    if (::listen(_socketDescriptor, SOMAXCONN) == SOCKET_ERROR)
        std::cerr << "Server: Socket listening failed!\n";
    else
        std::cout << "listen success.\n";
}

ServerTcpSocket::~ServerTcpSocket() { close(); }

SOCKET ServerTcpSocket::acceptConnections()
{
    while (true)
    {
        sockaddr_in clientAddress;
        socklen_t clientAddressLength = sizeof(clientAddress);

        _connectedClient = ::accept(_socketDescriptor, reinterpret_cast<sockaddr*>(&clientAddress),
                                    &clientAddressLength);

        if (_connectedClient == INVALID_SOCKET)
            std::cerr << "Server: Error accepting connection!\n";
    }
}

void ServerTcpSocket::processingRcv()
{
    while (true)
    {
        if (!_connectedClients.empty())
        {
            for (const ClientSocket sockClient : _connectedClients)
            {
                Header header;
                while (recv(sockClient.socketDescriptor, reinterpret_cast<char*>(&header),
                            sizeof(header), 0)
                       != -1)
                {
                    handleHeaderType(header);
                }
            }
        }
        else if (_connectedClient != INVALID_SOCKET)
        {
            Header header;
            while (recv(_connectedClient, reinterpret_cast<char*>(&header), sizeof(header), 0)
                   != -1)
            {
                handleHeaderType(header);
            }
        }
        // if (!_connectedClients.empty())
        //{
        //     Header header;
        //     while (recv(_connectedClients.back().socketDescriptor,
        //     reinterpret_cast<char*>(&header),
        //                 sizeof(header), 0)
        //            != -1)
        //     {
        //         handleHeaderType(header);
        //     }
        // }
        // else if (_connectedClient != INVALID_SOCKET)
        //{
        //     Header header;
        //     while (recv(_connectedClient, reinterpret_cast<char*>(&header), sizeof(header), 0)
        //            != -1)
        //     {
        //         handleHeaderType(header);
        //     }
        // }
    }
}

void ServerTcpSocket::handleHeaderType(Header header)
{
    switch (header.type)
    {
    case Type::Text:
        handleTextMessageRequest(header);
        break;
    case Type::LogIn:
        handleLogInRequest(header.sender);
        break;
    case Type::Binary:
        break;
    }
}
void ServerTcpSocket::handleLogInRequest(const std::string& nameId)
{
    if (_connectedClient == INVALID_SOCKET)
    {
        std::cerr << "Server: Can't register socket in server";
        return;
    }

    _connectedClients.push_back({ nameId, _connectedClient });
    std::cout << "_connectedClients.size() = " << _connectedClients.size();
}

void ServerTcpSocket::handleTextMessageRequest(Header header)
{
    Body body;
    body.bytes.resize(header.contentSize);

    recv(_connectedClients.back().socketDescriptor, reinterpret_cast<char*>(body.bytes.data()),
         (int)header.contentSize, 0);

    std::string content(body.bytes.begin(), body.bytes.end());
    content.push_back('\0');
    std::cout << "Data:" << content << std::endl;

    for (const auto sock : _connectedClients)
    {
        if(sock.nameId == header.recipient)
        {
            send(header, body, sock.socketDescriptor);
        }
    }
}
