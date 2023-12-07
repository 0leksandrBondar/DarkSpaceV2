import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic

import Theme 1.0

ScrollBar
{
   visible: parent.contentHeight > parent.height
   background: Rectangle {
       width: 10
       radius: 20
       color: Theme.scrollBarBackgroundColor
       anchors.right: parent.right
   }
   contentItem: Rectangle {
       radius: 20
       color: Theme.scrollBarItemColor
       implicitWidth: 10
       anchors.right: parent.right
   }
}