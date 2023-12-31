#include "UserData.h"

QString UserData::getUserName() const { return _userName; }

bool UserData::handleUserName(const QString& userName)
{
    if (userName.isEmpty())
    {
        return false;
    }

    _userName = userName;

    return true;
}