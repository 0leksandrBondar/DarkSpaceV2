#include "Socket.h"
#include "Utils/WSA_Utils.h"

Socket::Socket(AddressFamily addressFamily, SocketType type, Protocol protocol)
{
    WSA::GetInstance()->initWSA();
    _socketDescriptor = socket(static_cast<int>(addressFamily), static_cast<int>(type),
                               static_cast<int>(protocol));
    if (_socketDescriptor == INVALID_SOCKET)
        std::cerr << "Socket: Error creation socket\n";
}

void Socket::send(std::vector<Byte> bytes, SOCKET socket)
{
    if(isValid())
    {
        const SOCKET& targetSocket = socket == INVALID_SOCKET ? _socketDescriptor : socket;
        ::send(targetSocket, reinterpret_cast<const char*>(bytes.data()), bytes.size(), 0);
    }
    else
    {
        std::cerr << "Socket: _socketDescriptor invalid!\n";
        return;
    }
}


void Socket::send(const Header& header, const Body& body, SOCKET socket)
{
    if(!isValid())
    {
        std::cerr << "Socket: _socketDescriptor invalid!\n";
        return;
    }

    const SOCKET& targetSocket = socket == INVALID_SOCKET ? _socketDescriptor : socket;
    ::send(targetSocket, reinterpret_cast<const char*>(&header), sizeof(header), 0);
    ::send(targetSocket, reinterpret_cast<const char*>(body.bytes.data()), body.bytes.size(), 0);
}

void Socket::close() { ::closesocket(_socketDescriptor); }
