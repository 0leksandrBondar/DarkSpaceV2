import QtQuick 2.15
import QtQuick.Controls 2.15

ListModel
{
    id: optionList

    anchors.fill: parent
    ListElement
    {
        optionName: qsTr("Profile")
        icon: "file:Resource/ButtonIcons/profile.png"
    }
    ListElement
    {
        optionName: qsTr("Create new chat")
        pathToComponent: qsTr("qrc:/MoreOptionPages/ChatOptionPages/AddNewChatPage.qml")
        icon: "file:Resource/ButtonIcons/newUser.png"
    }
    ListElement
    {
        optionName: qsTr("Create new group")
        icon: "file:Resource/ButtonIcons/newGroup.png"
    }
    ListElement
    {
        optionName: qsTr("Settings")
        icon: "file:Resource/ButtonIcons/setting.png"
    }
}