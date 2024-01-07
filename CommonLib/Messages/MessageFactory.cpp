#include "MessageFactory.h"

#include "TextMessage.h"

Message* MessageFactory::createMessage(Message::MessageType type, const QString& sender,
                                       const QDateTime& timestamp)
{
    switch (type)
    {
    case Message::MessageType::TextMessage:
        return new TextMessage(sender, timestamp);

        //    TODO: implement it when it is necessary
        //    case Message::MessageType::VideoMessage:
        //        return new VideoMessage(sender, timestamp);
        //    case Message::MessageType::VoiceMessage:
        //        return new VoiceMessage(sender, timestamp);
        //    case Message::MessageType::ImageMessage:
        //        return new ImageMessage(sender, timestamp);
    default:
        return nullptr;
    }
}
