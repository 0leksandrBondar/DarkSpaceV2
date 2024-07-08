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
        width: parent.width - (chatListView.width + settingsBar.width)
        height: parent.height
        anchors.left: chatListView.right
    }
}
