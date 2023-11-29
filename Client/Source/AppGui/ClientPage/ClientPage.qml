import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

import "./ChatListView"
import "./CorrespondenceView"

Rectangle
{
    id: clientPage

    color: Material.background
    width: appWindow.width
    height: appWindow.height

    ChatListView
    {
        id: chatListView
    }
    CorrespondenceView
    {
        width: parent.width - chatListView.width
        height: parent.height
        anchors.right: clientPage.right
    }
}