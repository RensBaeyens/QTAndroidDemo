import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 420
    height: 600

    Item {
        id: item1
        property alias leftTopButton: leftTopButton
        Rectangle {
            id: leftTopButton
            width: 180
            height: 200
            color: "#83f02a"
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
        }

        property alias rightTopButton: rightTopButton
        Rectangle {
            id: rightTopButton
            x: 180
            y: 0
            width: 180
            height: 200
            color: "#4cd753"
        }
        property alias leftMiddleButton: leftMiddleButton
        Rectangle {
            id: leftMiddleButton
            x: 0
            y: 200
            width: 180
            height: 200
            color: "#4cd753"
        }
        property alias rightMiddleButton: rightMiddleButton
        Rectangle {
            id: rightMiddleButton
            x: 180
            y: 200
            width: 180
            height: 200
            color: "#4cd792"
        }
        property alias leftBottomButton: leftBottomButton
        Rectangle {
            id: leftBottomButton
            x: 0
            y: 400
            width: 180
            height: 200
            color: "#4cd792"
        }
        property alias rightBottomButton: rightBottomButton
        Rectangle {
            id: rightBottomButton
            x: 180
            y: 400
            width: 180
            height: 200
            color: "#0fab75"
        }
    }
}
