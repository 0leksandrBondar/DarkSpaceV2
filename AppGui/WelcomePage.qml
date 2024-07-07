import QtQuick 2.15
import QtQuick.Controls 2.15

import Theme 1.0
import "./SharedComponents/Buttons"

Rectangle
{
    signal logInClicked()
    signal singUpClicked()

    Image
    {
        id: loginPageBackground
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        source: Theme.pathToBackgroundImage
    }

    Text
    {
        id: welcomeLabel
        text: qsTr("Welcome to DarkSpace")
        font.bold: true
        font.pointSize: 54
        color: Theme.labelColor
        anchors.bottom: parent.verticalCenter
        anchors.bottomMargin: parent.height / 4
        anchors.horizontalCenter: parent.horizontalCenter
    }

    CustomButton
    {
        id: signInButton
        buttonText: qsTr("LogIn")
        anchors.bottom: parent.bottom
        anchors.right: parent.horizontalCenter
        anchors.rightMargin: parent.width / 10
        anchors.bottomMargin: parent.height / 4
        onClicked:
        {
            logInClicked()
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
            singUpClicked()
        }
    }
}
