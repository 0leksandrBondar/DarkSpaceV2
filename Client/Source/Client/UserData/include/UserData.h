#pragma once

#include <QMetaObject>
#include <QObject>
#include <QString>

class UserData
{
public:
    UserData() = default;
    bool handleUserName(const QString& userName);
    [[nodiscard]] QString getUserName() const;

private:
    QString _userName{};
};