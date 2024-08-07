#include "WSA_Utils.h"

#include <iostream>

void WSA::initWSA()
{
	if (WSAStartup(MAKEWORD(2, 2), &_wsaData))
		std::cerr << "WSA isn't initialized!";
}
