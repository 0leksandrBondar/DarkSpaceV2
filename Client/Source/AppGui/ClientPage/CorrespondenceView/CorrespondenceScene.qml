import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle
{
    id: correspondensScene

    property var message: null

    width: parent.width
    height: parent.height - inputField.height
    anchors.top: parent.top
    color: "#1C1C1C"

    ListModel {
        id: listModel

    }
    ListView {
        clip: true
        boundsBehavior: Flickable.StopAtBounds
        anchors.fill: parent
        anchors.left: parent.left
        anchors.leftMargin: 10
        model: listModel
        delegate: MessageUnit {
            message: model.message
            owner: model.owner
            currentTimeValue: model.currentTimeValue
            isSenderMe: model.isSenderMe
        }
        spacing: 5
    }

    Component.onCompleted: {
        listModel.append({"owner": "Serhii", "message": "Hi", "currentTimeValue": Qt.formatDateTime(new Date(),  "hh:mm"), "isSenderMe": true})
        listModel.append({"owner": "Valerii", "message": "Who are you?", "currentTimeValue": Qt.formatDateTime(new Date(), "hh:mm"), "isSenderMe": false})
        listModel.append({"owner": "Serhii", "message": "I`m Serhii", "currentTimeValue": Qt.formatDateTime(new Date(), "hh:mm"), "isSenderMe": true})
        listModel.append({"owner": "Valerii", "message": "You`re cool, Serhii", "currentTimeValue": Qt.formatDateTime(new Date(), "hh:mm"), "isSenderMe": false})
    }
}