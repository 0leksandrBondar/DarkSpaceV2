import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic

import Theme 1.0

import "../../SharedComponents/TextFields"

Dialog
{
    modal: true
    width: moreOptionWindow.width
    height: moreOptionWindow.height
    anchors.centerIn: parent

    Text
    {
        id: createNewChatLabel
        text: qsTr("Create new chat")
        anchors.top: parent.top
        anchors.topMargin : parent.height / 10
        anchors.horizontalCenter: parent.horizontalCenter
        color: Theme.labelColor
        font.pointSize: 24
        font.bold: true
    }

    // Button
    // {
    //     id: backButton
    //     width: 50
    //     height: 50
    //     anchors.top: parent.top
    //     anchors.left: parent.left
    //     text: "back"
    // }

    CustomTextField
    {
        id: searchLine
        width: parent.width
        height: 50
        anchors.topMargin : parent.height / 10
        anchors.top: createNewChatLabel.bottom
        textPlaceholder: qsTr("Enter username")
    }

    Button
    {
        id: createButton
        width: searchLine.width
        height: 50
        anchors.top: searchLine.bottom
        anchors.topMargin: 50
        onClicked:
        {
            chatListView.addNewChat(searchLine.text)
            searchLine.text = ""
        }
        contentItem : Text
        {
            text: qsTr("Create new chat")
            color: createButton.hovered ?  Theme.buttonHoveredTextColor : Theme.buttonUnhoveredTextColor
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 17
        }
        background: Rectangle
        {
            radius: 30
            opacity: createButton.hovered ? 0.7 : 0.9
            color: createButton.hovered ? Theme.buttonHoveredBackgroundColor : Theme.buttonUnhoveredBackgroundColor
        }
    }
}

