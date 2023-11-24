import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

import "./SharedComponents/Buttons"

Rectangle
{
    anchors.fill: parent

    Image
    {
        id: loginPageBackground
        source: "file:Resource/Backgrounds/background.jpg"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }

    Text
    {
        id: welcomeLabel
        text: qsTr("Welcome to DarkSpace")
        anchors.bottom: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: parent.height / 4
        color: "#00ff95"
        font.pointSize: 46
        font.bold: true
    }

    CustomButton
    {
        id: signInButton
        buttonText: qsTr("SignIn")
        anchors.bottom: parent.bottom
        anchors.right: parent.horizontalCenter
        anchors.rightMargin: parent.width / 10
        anchors.bottomMargin: parent.height / 4
    }

    CustomButton
    {
        id: signUpButton
        buttonText: qsTr("SignUp")
        anchors.bottom: parent.bottom
        anchors.left: parent.horizontalCenter
        anchors.leftMargin: parent.width / 10
        anchors.bottomMargin: parent.height / 4
    }
}