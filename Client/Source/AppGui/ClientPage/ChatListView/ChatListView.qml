import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

import Theme 1.0

import "../../SharedComponents/ScrollBars"

Rectangle
{
    id: chatListViewBlock
    width: parent.width / 3
    height: parent.height
    anchors.left: parent.left

    signal clickOnChatBlock(string chatName);

    function addNewChat(chatName)
    {
        chatBlockList.append({"text": chatName});
    }

    ChatSearchLine
    {
        id: chatSearchLine
        width: parent.width
        height: 60
    }

    Rectangle
    {
        id: chatListView

        height: parent.height - chatSearchLine.height
        width: parent.width
        color: Material.background
        anchors.top: chatSearchLine.bottom

        ListModel
        {
            id: chatBlockList
        }

        ListView
        {
            id: listView
            clip: true
            anchors.fill: parent
            model: chatBlockList
            orientation: Qt.Vertical
            boundsBehavior: Flickable.StopAtBounds
            verticalLayoutDirection: ListView.TopToBottom
            delegate: ChatBlock
            {
                title: model.text
            }
            ScrollBar.vertical: CustomScrollBar
            {

            }
        }
    }
    Rectangle
    {
        id: resizeWidget
        width: 5
        height: parent.height
        color: "transparent"
        anchors.left: chatListViewBlock.right

        MouseArea
        {
            anchors.fill: parent
            hoverEnabled: true
            drag.target: parent
            drag.axis: Drag.XAxis
            cursorShape: drag.active ? Qt.SizeHorCursor : Qt.ArrowCursor
            onEntered:
            {
                cursorShape = Qt.SizeHorCursor;
            }
            onMouseXChanged:
            {
                if(drag.active)
                {
                    var maxWidth = appWindow.width - (appWindow.width/ 2)
                    chatListViewBlock.width = chatListViewBlock.width + mouseX

                    if(chatListViewBlock.width > maxWidth)
                        chatListViewBlock.width = maxWidth
                    if(chatListViewBlock.width < 50)
                        chatListViewBlock.width = 50
                }
            }
        }
    }
}