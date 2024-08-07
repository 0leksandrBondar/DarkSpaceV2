#pragma once

#include "ISingleton/ISingleton.h"

#include <WinSock2.h>
#include <ws2tcpip.h>

class WSA : public ISingleton<WSA>
{
public:
	void initWSA();

private:
	WSADATA _wsaData;
};