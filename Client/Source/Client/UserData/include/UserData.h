#pragma once

#include <QMetaObject>
#include <QObject>
#include <QString>

class UserData : public QObject
{
    Q_OBJECT

public:
    explicit UserData(QObject* parent = nullptr);

public slots:
    bool handleUserName(const QString& userName);
    [[nodiscard]] QString getUserName() const;

private:
    QString _userName{};
};