#pragma once

#include <string>
#include <WinSock2.h>

enum class AddressFamily
{
    IPv4 = AF_INET,
    IPv6 = AF_INET6
};

class SocketAddress
{
public:
    SocketAddress(const std::string& address, USHORT port,
                  AddressFamily addressFamily = AddressFamily::IPv4);

    void setAddress(const std::string& address, AddressFamily addressFamily);

    [[nodiscard]] sockaddr_in generateSocketAddressIn() const;

private:
    USHORT _port = 0;
    IN_ADDR _address{};
    std::string _addressString;
    AddressFamily _addressFamily = AddressFamily::IPv4;
};