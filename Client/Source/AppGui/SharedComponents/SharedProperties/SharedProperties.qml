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
    readonly property color messageTextColor: "#505b65"
    readonly property color scrollBarItemColor: "#505250"
    readonly property color scrollBarBackgroundColor: "transparent"
}