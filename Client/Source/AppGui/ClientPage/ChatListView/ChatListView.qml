import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Rectangle
{
    id: chatListViewBlock
    width: parent.width / 3
    height: parent.height
    anchors.left: parent.left

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
        // --- temp (test case)
            id: chatBlockList
            ListElement { text: "Message 1" }
            ListElement { text: "Message 2" }
            ListElement { text: "Message 3" }
            ListElement { text: "Message 4" }
            ListElement { text: "Message 5" }
            ListElement { text: "Message 6" }
            ListElement { text: "Message 7" }
            ListElement { text: "Message 8" }
            ListElement { text: "Message 9" }
            ListElement { text: "Message 10" }
            ListElement { text: "Message 11" }
            ListElement { text: "Message 12" }
            ListElement { text: "Message 13" }
            ListElement { text: "Message 14" }
            ListElement { text: "Message 15" }
            ListElement { text: "Message 16" }
            ListElement { text: "Message 17" }
        }

        ListView
        {
            id: listView
            clip: true
            anchors.fill: parent
            model: chatBlockList
            orientation: Qt.Vertical
            boundsBehavior: Flickable.StopAtBounds
            verticalLayoutDirection: ListView.BottomToTop
            delegate: ChatBlock
            {
                title: model.text
            }
            ScrollBar.vertical: ScrollBar
            {
                visible: listView.contentHeight > listView.height
                background: Rectangle
                {
                    width: 10
                    radius: 20
                    color: "transparent"
                    anchors.right: parent.right
                }
                contentItem: Rectangle
                {
                    radius: 20
                    color: "#505250"
                    implicitWidth: 10
                    anchors.right: parent.right
                }
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
                    chatListViewBlock.width = chatListViewBlock.width + mouseX
                    if(chatListViewBlock.width < 50)
                        chatListViewBlock.width = 50
                }
            }
        }
    }
}