import QtQuick 2.15
import QtQuick.Controls.Material 2.15

import "./ChatListView"
import "./CorrespondenceView"
import "./SettingsBar"
import "../DialogWindows/MoreDialogWindow"

Rectangle
{
    id: clientPage

    color: Material.background
    width: appWindow.width
    height: appWindow.height

    property bool isChatSelected: false

    MoreDialogWindow
    {
        id: moreDialogWindow
        width: appWindow.width / 4
        height: appWindow.height
    }

    ChatListView
    {
        id: chatListView
        anchors.left: settingsBar.right
        onClickOnChatBlock: function(chatName)
         {
             correspondenceView.updateRecipientName(chatName)
             isChatSelected = true
         }
    }

    SettingsBar
    {
        id: settingsBar
        anchors.left: parent.left
    }

    CorrespondenceView
    {
        id: correspondenceView
        visible: isChatSelected ? true : false
        width: parent.width - (chatListView.width + settingsBar.width)
        height: parent.height
        anchors.left: chatListView.right
    }
}
