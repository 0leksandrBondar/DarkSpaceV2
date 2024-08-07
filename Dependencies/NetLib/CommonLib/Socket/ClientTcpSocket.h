#pragma once

#include "Socket.h"
#include "SocketAddress.h"

class ClientTcpSocket : public Socket
{
public:
    explicit ClientTcpSocket(AddressFamily addressFamily = AddressFamily::IPv4,
                             Protocol protocol = Protocol::Auto);
    ~ClientTcpSocket();

    void connectBySockAddr(const SocketAddress& sockAddr);

    void receive();

private:
    bool connect();
    void lockSocket(bool value);
};
