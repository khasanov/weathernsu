project(weathernsu)
 
find_package(KDE4 REQUIRED)
 
include(KDE4Defaults)
 
install(DIRECTORY package/
        DESTINATION ${DATA_INSTALL_DIR}/plasma/plasmoids/weathernsu)
 
install(FILES package/metadata.desktop
        DESTINATION ${SERVICES_INSTALL_DIR} RENAME plasma-applet-weathernsu.desktop) 
