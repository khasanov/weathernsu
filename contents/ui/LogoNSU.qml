import QtQuick 1.1

PathView {
    id: view
    width: 200
    height: 200
    model: colorModel
    delegate:
        Rectangle {
        width: parent.width < parent.height ? parent.width / 10 : parent.height / 10
        height: width
        radius: width * 2
        smooth: true
        gradient: Gradient {
            GradientStop { position: 0.0; color: color1 }
            GradientStop { position: 1.0; color: color2 }
        }
    }
    path: Ellipse {
        width: view.width
        height: view.height
    }

    ListModel {
        id: colorModel
        ListElement { color1 : "#ff8432"; color2: "#cc5100" }
        ListElement { color1 : "#add632"; color2: "#7aa300" }
        ListElement { color1 : "#d65bad"; color2: "#a3287a" }
        ListElement { color1 : "#a4c1a3"; color2: "#718e70" }
        ListElement { color1 : "#d65b5b"; color2: "#a32828" }
        ListElement { color1 : "#32adad"; color2: "#007a7a" }
        ListElement { color1 : "#845bad"; color2: "#51287a" }
        ListElement { color1 : "#adadd6"; color2: "#7a7aa3" }
        ListElement { color1 : "#ad3284"; color2: "#7a0051" }
        ListElement { color1 : "#32add6"; color2: "#007aa3" }
        ListElement { color1 : "#ffd632"; color2: "#cca300" }
        ListElement { color1 : "#5bad32"; color2: "#287a00" }
        ListElement { color1 : "#adadd6"; color2: "#7a7aa3" }
        ListElement { color1 : "#ad8432"; color2: "#7a5100" }
        ListElement { color1 : "#5b84ad"; color2: "#28517a" }
    }
}
