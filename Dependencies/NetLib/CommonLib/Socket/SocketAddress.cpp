#include "SocketAddress.h"

#include <WS2tcpip.h>
#include <iostream>

SocketAddress::SocketAddress(const std::string& address, USHORT port, AddressFamily addressFamily)
    : _port{ htons(port) }
{
    setAddress(address, addressFamily);
}

void SocketAddress::setAddress(const std::string& address, AddressFamily addressFamily)
{
    if (addressFamily != AddressFamily::IPv4 && addressFamily != AddressFamily::IPv6)
    {
        std::cerr << "Invalid Address Family for setting the socket's address. You have to use "
                     "IPv4 or IPv6";
    }

    _addressString = address;
    inet_pton(static_cast<int>(addressFamily), address.c_str(), &_address);
}

sockaddr_in SocketAddress::generateSocketAddressIn() const
{
    sockaddr_in addr{};
    ZeroMemory(&addr, sizeof(addr));
    addr.sin_family = static_cast<int>(AddressFamily::IPv4);
    addr.sin_port = _port;
    addr.sin_addr = _address;

    return addr;
}
