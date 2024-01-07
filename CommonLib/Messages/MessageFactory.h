#pragma once

#include "Message.h"

class MessageFactory
{
public:
    static Message* createMessage(Message::MessageType type, const QString& sender,
                                  const QDateTime& timestamp);
};