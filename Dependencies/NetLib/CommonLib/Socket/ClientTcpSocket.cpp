#include "ClientTcpSocket.h"

ClientTcpSocket::ClientTcpSocket(AddressFamily addressFamily, Protocol protocol)
    : Socket(addressFamily, SocketType::Stream, protocol)
{
}

ClientTcpSocket::~ClientTcpSocket() { close(); }

void ClientTcpSocket::lockSocket(bool value)
{
    // lockFactor == false = lock
    // lockFactor == true = unlock

    u_long lockFactor = value ? 1 : 0;
    ::ioctlsocket(_socketDescriptor, FIONBIO, &lockFactor);
}

bool ClientTcpSocket::connect()
{
    if (::connect(_socketDescriptor, reinterpret_cast<sockaddr*>(&_socketAddress),
                  sizeof(_socketAddress))
        == SOCKET_ERROR)
    {
        std::cerr << "ClientTcpSocket: connection failed\n";
        return false;
    }

    fd_set fileDescriptor;

    lockSocket(true);

    FD_ZERO(&fileDescriptor);
    FD_SET(_socketDescriptor, &fileDescriptor);
    timeval timeInterval{ 60, 0 };

    const bool isWritable = select(0, nullptr, &fileDescriptor, nullptr, &timeInterval) > 0;

    lockSocket(false);

    _isConnected = isWritable;
    return isWritable;
}

void ClientTcpSocket::connectBySockAddr(const SocketAddress& sockAddr)
{
    _socketAddress = sockAddr.generateSocketAddressIn();
    connect();
}

void ClientTcpSocket::receive()
{
    while(true)
    {
        Header header;
        Body body;
        while (recv(_socketDescriptor, reinterpret_cast<char*>(&header), sizeof(header), 0) != -1)
        {
            body.bytes.resize(header.contentSize);
            recv(_socketDescriptor, reinterpret_cast<char*>(body.bytes.data()), (int)header.contentSize,
                 0);
            std::string content(body.bytes.begin(), body.bytes.end());
            content.push_back('\0');
            std::cout << "Data:" << content << std::endl;
        }
    }
}
