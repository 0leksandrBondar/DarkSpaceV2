import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic

import Theme 1.0
import "../SharedComponents/Buttons"
import "../SharedComponents/TextFields"

Rectangle
{
    width: appWindow.width
    height: appWindow.height

    signal backClicked()
    signal logInClicked()

    Image
    {
        id: loginPageBackground
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        source: Theme.pathToBackgroundImage
    }

    Text
    {
        id: logInLabel
        text: qsTr("LogIn")
        anchors.top: parent.top
        anchors.topMargin : 30
        anchors.horizontalCenter: parent.horizontalCenter
        color: Theme.labelColor
        font.pointSize: 54
        font.bold: true
    }

    CustomTextField
    {
        id: userNameField
        textPlacehodel: qsTr("User name")
        anchors.bottom: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: parent.height / 5
    }

    CustomTextField
    {
        id: passwordField
        textPlacehodel: qsTr("Password")
        echoMode: TextInput.Password
        anchors.top: userNameField.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 30
    }

    CustomButton
    {
        id: signInButton
        buttonText: qsTr("Back")
        anchors.bottom: parent.bottom
        anchors.right: parent.horizontalCenter
        anchors.rightMargin: parent.width / 10
        anchors.bottomMargin: parent.height / 4
        onClicked:
        {
            backClicked()
        }
    }

    CustomButton
    {
        id: signUpButton
        buttonText: qsTr("LogIn")
        anchors.bottom: parent.bottom
        anchors.left: parent.horizontalCenter
        anchors.leftMargin: parent.width / 10
        anchors.bottomMargin: parent.height / 4
        onClicked:
        {
            logInClicked()
        }
    }
}