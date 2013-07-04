import QtQuick 2.1
//import QtQuick.Controls 1.0
import QtQuick.Window 2.0
import QtQuick.XmlListModel 2.0

Window {
    id: root
    width: 300; height: 300
    title: qsTr("Температура около НГУ")

    Rectangle {
        id: body
        anchors.fill: parent

        Image {
            source: "nsu_logo.png"
            anchors.centerIn: body
        }

        Text {
            id: label
            anchors.centerIn: body

            textFormat: Text.RichText
            style: Text.Sunken
            font.family: "Ubuntu"
            horizontalAlignment: Text.AlignHCenter

            font.pointSize: 20
            color: "green"
            text: qsTr("Температура<br>около<br>НГУ")
        }

        MouseArea {
            id: mouse
            anchors.fill: parent
            onPressed: {
                label.font.pointSize = 48
                if (weatherModel.get(0).current > weatherModel.get(0).average)
                    label.color = "red"
                else
                    label.color = "blue"
                label.text = weatherModel.get(0).current + "<br>&deg;C"
            }
            onReleased: {
                label.font.pointSize = 20
                label.color = "green"
                label.text = qsTr("Температура<br>около<br>НГУ")
            }
        }
    }

    XmlListModel {
        id: weatherModel
        source: "http://weather.nsu.ru/xml_brief.php"
        query: "/weather"

        XmlRole { name: "current"; query: "current/string()" }
        XmlRole { name: "average"; query: "average/string()" }
    }
}
