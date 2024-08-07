#pragma once

#include <vector>
#include <string>

enum class Status
{
	None,
	Ok,
	Error,
	Warning
};

enum class Type
{
	None,
	Text,
	Binary,
	Status,
    LogIn
};

struct Header
{
	Type type = Type::None;

    std::string sender;
    std::string recipient;
	std::size_t contentSize = 0;
};

struct Body
{
	using Byte = uint8_t;
	std::vector<Byte> bytes;
};