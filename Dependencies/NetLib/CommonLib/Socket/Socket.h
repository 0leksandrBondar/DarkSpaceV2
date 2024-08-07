#pragma once

#include "Protocol/Protocol.h"
#include "SocketAddress.h"

#include <WS2tcpip.h>
#include <WinSock2.h>
#include <iostream>

enum class SocketType
{
    None,
    Stream = SOCK_STREAM,
    Dgram = SOCK_DGRAM,
};

enum class Protocol
{
    Auto = 0,
    TCP = IPPROTO_TCP,
    UDP = IPPROTO_UDP,
};

class Socket
{
public:
    using Byte = uint8_t;

public:
    Socket(AddressFamily addressFamily, SocketType type, Protocol protocol = Protocol::Auto);

    void send(std::vector<Byte> bytes,  SOCKET socket = INVALID_SOCKET);
    void send(const Header& header, const Body& body, SOCKET socket = INVALID_SOCKET);
    void close();

    [[nodiscard]] bool isConnected() const { return _isConnected; }
    [[nodiscard]] bool isValid() const { return _socketDescriptor != INVALID_SOCKET; }

protected:
    bool _isConnected = false;
    sockaddr_in _socketAddress{};
    SOCKET _socketDescriptor = INVALID_SOCKET;
};