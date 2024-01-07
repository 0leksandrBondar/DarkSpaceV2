import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic

import Theme 1.0
import Message 1.0

import "../../SharedComponents/Buttons"
import "../../SharedComponents/TextEditors"

Rectangle
{
    signal sendButtonClicked(string text)

    id: inputMessageField
    color: Theme.inputMessageFieldColor
    radius: 10

    function sendMessage()
    {
        var message = textEditor.text;
        if (message !== "" && /[a-zA-Z]/.test(message))
        {
            sendButtonClicked(message);
            client.sendMessage(Message.MessageType.TextMessage, client.getUserName(), textEditor.text)
            textEditor.clear();
        }
    }

    CustomTextEditor
    {
        id: textEditor
        anchors.right: fileButton.left

        Keys.onPressed: function (event)
        {
            if (event.key === Qt.Key_Return && event.modifiers & Qt.ControlModifier)
            {
                sendMessage()
            }
        }
    }

    Button
    {
        id: sendButton

        width: 50
        height: 50
        anchors.right: parent.right
        icon.source: Theme.iconSendPath
        background: Rectangle
        {
            color: sendButton.hovered ? "#434543" : Theme.inputMessageFieldColor
        }
        onClicked:
        {
            sendMessage()
        }
    }

    Button
    {
        id: fileButton
        width: 50
        height: 50
        anchors.right: sendButton.left
        icon.source: Theme.iconFolderPath
        background: Rectangle
        {
            color: fileButton.hovered ? "#434543" : Theme.inputMessageFieldColor
        }
    }
}
