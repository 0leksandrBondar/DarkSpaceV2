import QtQuick 2.15
import QtQuick.Controls 2.15

ListModel
{
    id: optionList

    anchors.fill: parent
    ListElement
    {
        optionName: qsTr("Profile")
    }
    ListElement
    {
        optionName: qsTr("Create new chat")
        pathToComponent: qsTr("qrc:/MoreOptionPages/ChatOptionPages/AddNewChatPage.qml")
    }
    ListElement
    {
        optionName: qsTr("Create new group")
    }
    ListElement
    {
        optionName: qsTr("Settings")
    }
}