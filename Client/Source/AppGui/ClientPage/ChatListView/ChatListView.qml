import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Rectangle
{
    width: parent.width / 3
    height: parent.height
    anchors.left: parent.left

    Rectangle
    {
        id: controlBar
        width: parent.width
        height: 60
        anchors.top: parent.top
        color: "red"
    }

    Rectangle
    {
        id: chatListView

        height: parent.height - controlBar.height
        width: parent.width
        color: Material.background

        border.width: 1
        border.color:"#00ff95"
        anchors.top: controlBar.bottom

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
            boundsBehavior: Flickable.StopAtBounds
            delegate: ChatBlock
            {
                title: model.text
            }
            ScrollBar.vertical: ScrollBar
            {
                visible: listView.contentHeight > listView.height
            }
        }
    }
}