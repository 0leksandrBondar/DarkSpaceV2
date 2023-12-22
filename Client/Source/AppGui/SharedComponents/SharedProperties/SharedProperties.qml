pragma Singleton

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

QtObject
{
    readonly property color labelColor: "#00ff95"
    readonly property color backgroundColor: Material.background
    readonly property string pathToBackgroundImage: "file:Resource/Backgrounds/background.jpg"
    readonly property color correspondenceSceneBackgroundColor: "#18191d"
    readonly property color messageColor: "#2b2f37"
    readonly property color interlocutorsMessageColor: "#33393f"
    readonly property color ownerNameColor: "#457571"
    readonly property color interlocutorsNameColor: "#4575a1"
    readonly property color messageTextColor: "white"
    readonly property color timeIndicatorTextColor: "#505b65"
    readonly property color scrollBarItemColor: "#505250"
    readonly property color scrollBarBackgroundColor: "transparent"
    readonly property color buttonUnhoveredBackgroundColor: "#1b1c1f"
    readonly property color buttonHoveredBackgroundColor: "#00ff95"
    readonly property color buttonHoveredTextColor: "#1b1c1f"
    readonly property color buttonUnhoveredTextColor: "#00ff95"
    readonly property color sendButtonUnhoveredBackgroundColor: "#282e33"
    readonly property color sendButtonHoveredBackgroundColor:"#282e33"
    readonly property color sendButtonUnhoveredTextColor: "#3cb3a4"
    readonly property color sendButtonHoveredTextColor: "#3cb3f4"
    readonly property color fileButtonUnhoveredBackgroundColor: "#282e33"
    readonly property color fileButtonHoveredBackgroundColor: "#282e33"
    readonly property color fileButtonUnhoveredTextColor: "#3cb3a4"
    readonly property color fileButtonHoveredTextColor: "#3cb3f4"
    readonly property color inputMessageFieldColor: "#282e33"
    readonly property color personalBarColor: "#282e33"
    readonly property color personalBarTextColor: "white"

    // --------------- icon paths -----------------
    readonly property string iconSendPath: "file:Resource/ButtonIcons/send.png"
    readonly property string iconFolderPath: "file:Resource/ButtonIcons/folder.png"
    readonly property string iconInfoPath: "file:Resource/ButtonIcons/info.png"
    readonly property string iconPhonePath: "file:Resource/ButtonIcons/phone.png"
    readonly property string iconSearchPath: "file:Resource/ButtonIcons/search.png"
    readonly property string iconMorePath: "file:Resource/ButtonIcons/more.png"
}
