import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

import "./ChatListView"

Rectangle
{
    id: clientPage

    color: Material.background
    anchors.fill: parent

    ChatListView
    {
    }
}