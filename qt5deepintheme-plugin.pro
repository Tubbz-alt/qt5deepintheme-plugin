#-------------------------------------------------
#
# Project created by QtCreator 2016-08-09T14:24:29
#
#-------------------------------------------------

QT       += core-private gui-private platformsupport-private
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets widgets-private

TARGET = qdeepin
TEMPLATE = lib
CONFIG += plugin link_pkgconfig

PKGCONFIG += mtdev dde-file-manager

PLUGIN_TYPE = platformthemes
PLUGIN_EXTENDS = -
PLUGIN_CLASS_NAME = QDeepinTheme

#DESTDIR = $$[QT_INSTALL_PLUGINS]/platformthemes

SOURCES += qdeepintheme.cpp \
    main.cpp \
    qdeepinfiledialoghelper.cpp

HEADERS += qdeepintheme.h \
    qdeepinfiledialoghelper.h
DISTFILES += \
    deepin.json

unix {
    target.path = $$[QT_INSTALL_PLUGINS]/platformthemes
    INSTALLS += target
}
