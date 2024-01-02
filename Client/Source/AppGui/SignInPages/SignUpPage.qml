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
    signal signUpClicked()

    Image
    {
        id: loginPageBackground
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        source: Theme.pathToBackgroundImage
    }

    Text
    {
        id: signUnLabel
        text: qsTr("SignUp")
        font.bold: true
        font.pointSize: 54
        anchors.topMargin : 30
        color: Theme.labelColor
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
    }

    CustomTextField
    {
        id: userNameField
        textPlaceholder: qsTr("User name")
        anchors.bottom: parent.verticalCenter
        anchors.bottomMargin: parent.height / 5
        anchors.horizontalCenter: parent.horizontalCenter
    }

    CustomTextField
    {
        id: emailField
        textPlaceholder: qsTr("Email")
        anchors.top: userNameField.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 30
    }

    CustomTextField
    {
        id: passwordField
        echoMode: TextInput.Password
        textPlaceholder: qsTr("Password")
        anchors.topMargin: 30
        anchors.top: emailField.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

    CustomButton
    {
        id: backButton
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
        buttonText: qsTr("SignUp")
        anchors.bottom: parent.bottom
        anchors.left: parent.horizontalCenter
        anchors.leftMargin: parent.width / 10
        anchors.bottomMargin: parent.height / 4
        onClicked:
        {
            if (_userData.handleUserName(userNameField.text))
            {
                signUpClicked()
            }
            else
            {
                console.log("username field cannot be empty")
            }
        }
    }
}
