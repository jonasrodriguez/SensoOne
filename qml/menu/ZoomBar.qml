import QtQuick 2.0
import "../"

Rectangle {
    color: Styles.backgroundColor

    Image {
        height: parent.height * 0.99
        width: parent.width * 0.99

        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter

        source: "qrc:/qml/images/Zoom.png"
    }
}
