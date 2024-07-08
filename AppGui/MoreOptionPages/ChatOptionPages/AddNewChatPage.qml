import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic

import Theme 1.0

import "../../SharedComponents/TextFields"

Dialog
{
    parent: Overlay.overlay
    anchors.centerIn: parent
    width: appWindow.width / 2.5
    height: appWindow.height / 2.5
    opacity: 1
    modal: true

    background: Rectangle
    {
        radius: 10
        color: Theme.buttonUnhoveredBackgroundColor
    }

    Text
    {
        id: createNewChatLabel
        text: qsTr("Create new chat")
        anchors.bottom: searchLine.top
        anchors.bottomMargin : parent.height * 0.25
        anchors.horizontalCenter: parent.horizontalCenter
        color: Theme.labelColor
        font.pointSize: 20
        font.bold: true
    }

    CustomTextField
    {
        id: searchLine
        width: parent.width / 2
        height: 50
        anchors.centerIn: parent
        textPlaceholder: qsTr("Enter username")
        placeholderFontSize: 10
    }

    Button
    {
        id: createButton
        width: searchLine.width
        height: 50

        anchors.top: searchLine.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin : parent.height * 0.25

        onClicked:
        {
            chatListView.addNewChat(searchLine.text)
            searchLine.text = ""
        }
        contentItem : Text
        {
            text: qsTr("Create")
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
