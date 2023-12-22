import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

import "./ChatListView"
import "./CorrespondenceView"
import "./SettingsBar"

Rectangle
{
    id: clientPage

    color: Material.background
    width: appWindow.width
    height: appWindow.height

    ChatListView
    {
        id: chatListView
        anchors.left: settingsBar.right
    }

    SettingsBar
    {
        id: settingsBar
        anchors.left: parent.left
    }

    CorrespondenceView
    {
        width: parent.width - (chatListView.width + settingsBar.width)
        height: parent.height
        anchors.left: chatListView.right
    }
}
