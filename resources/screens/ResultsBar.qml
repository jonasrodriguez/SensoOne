import QtQuick 2.0
import "../styles"
import com.test.Stonks 1.0

Rectangle {
    color: Styles.backgroundColor
    ListView {
        anchors.fill: parent

        orientation: ListView.Horizontal
        snapMode: ListView.SnapToItem
        model: Results
        delegate: ResultsDelegate {}
    }
}
