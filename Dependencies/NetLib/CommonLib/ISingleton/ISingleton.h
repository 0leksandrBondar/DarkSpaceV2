#pragma once

#include <memory>

template<class T>
class ISingleton
{
public:
	static T* GetInstance()
	{
		static std::unique_ptr<T> instance;
		if (instance == nullptr) {
			instance = std::unique_ptr<T>(new T);
		}
		return instance.get();
	}
};
