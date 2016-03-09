import QtQuick 2.0
import Ubuntu.Components 1.1

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "properties.liu-xiao-guo"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
    useDeprecatedToolbar: false

    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("properties")

        Rectangle {
            id: rect
            x: 0; y: 0
            width: 100; height: 100
            color: "blue"

            Component.onCompleted: {
                var keys = Object.keys(rect);
                for(var i = 0; i < keys.length; i++) {
                    var key = keys[i];
                    // prints all properties, signals, functions from object
                    console.log(key + ' : ' + rect[key]);

                    if (key === "x") {
                        rect[key] = 100;
                    }
                }
            }
        }

    }
}

