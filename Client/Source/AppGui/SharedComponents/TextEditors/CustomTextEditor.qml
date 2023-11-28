import QtQuick 2.15
import QtQuick.Controls 2.15

TextEdit
{
    id:textEdit
    width: parent.width - sendButton.width + fileButton.width
    height: parent.height
    anchors.left: fileButton.right
    verticalAlignment: Text.AlignVCenter
    wrapMode: TextEdit.Wrap
    color: "white"
    font.pointSize: 16

    onContentHeightChanged:
    {
        if(parent.height < appWindow.height / 4 &&
         textEdit.contentHeight > 50)
        {
            console.log("111")
            parent.height =  textEdit.contentHeight
        }
    }
}