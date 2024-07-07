import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Flickable
{
    id: flick
    clip: true
    width: parent.width - (sendButton.width + fileButton.width);
    height: parent.height;
    contentWidth: textEdit.contentWidth
    contentHeight: textEdit.contentHeight
    boundsBehavior: Flickable.StopAtBounds
    property string text: qsTr("")
    function ensureVisible(r)
    {
        if (contentX >= r.x)
            contentX = r.x;
        else if (contentX+width <= r.x+r.width)
            contentX = r.x+r.width-width;
        if (contentY >= r.y)
            contentY = r.y;
        else if (contentY+height <= r.y+r.height)
            contentY = r.y+r.height-height;
    }

    function clear()
    {
        textEdit.clear();
    }

    TextEdit
    {
        id: textEdit
        width: flick.width

        property int defaultInputFieldHeight: 50

        //TODO: Fix it later (height property)
        // DESCRIPTION: Before starting text input, this code centers the TextEdit relative to the parent element,
        // but shows a warning: qrc:/SharedComponents/TextEditors/CustomTextEditor.qml:30:9: QML TextEdit: Loop binding
        //detected for property "height". when increasing the parent block
        height: contentHeight < inputMessageField.height ? inputMessageField.height : contentHeight

        focus: true
        color: "white"
        font.pointSize: 14
        wrapMode: TextEdit.Wrap
        leftPadding: 15
        verticalAlignment: Text.AlignVCenter

        onCursorRectangleChanged:
        {
           if(contentHeight > inputMessageField.height && inputMessageField.height < appWindow.height / 3)
                inputMessageField.height = contentHeight;
           if(inputMessageField.height > appWindow.height / 3)
                inputMessageField.height = appWindow.height / 3;
        }

        onTextChanged:
        {
            flick.text = textEdit.text
            if (textEdit.text.trim() === "")
                inputMessageField.height = defaultInputFieldHeight;
        }
    }
}
