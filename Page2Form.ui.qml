import QtQuick 2.9
import QtQuick.Controls 2.2
import QtPositioning 5.8
import QtLocation 5.9

Page {
    id: page
    width: 600
    height: 600
    Item {
        property alias mapPlugin: mapPlugin
        Map {
            id: mapPlugin
        }
    }
}
