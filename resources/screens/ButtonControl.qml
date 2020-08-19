import QtQuick 2.0
import "../styles"

Rectangle {
    id: button
    property string textValue: "Button"

    signal clicked

    color: Styles.buttonBackgroundColor
    Text {
        text: qsTr(textValue)
        font.bold: true
        color: Styles.buttonTextColor
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: button.clicked()
    }
}
