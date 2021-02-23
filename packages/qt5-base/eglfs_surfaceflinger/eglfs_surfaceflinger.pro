TARGET = qeglfs-surfaceflinger-integration

QT += core-private gui-private eglfsdeviceintegration-private

DEFINES += QT_EGL_NO_X11

#QMAKE_CFLAGS = $$replace(QMAKE_CFLAGS, "-I/data/data/com.termux/files/usr/include", "")
#QMAKE_CXXFLAGS = $$replace(QMAKE_CFLAGS, "-I/data/data/com.termux/files/usr/include", "")

INCLUDEPATH += $$PWD/../../api \
               $$PWD/include/android_frameworks_native/include \
               $$PWD/include/android_hardware_libhardware/include/hardware/ \
               $$PWD/android_system_core/include

CONFIG += egl

SOURCES += $$PWD/qeglfs_sf_main.cpp \
           $$PWD/qeglfs_sf_integration.cpp

HEADERS += $$PWD/qeglfs_sf_integration.h

LIBS += -lui -lgui -lutils -lcutils -lEGL

OTHER_FILES += $$PWD/eglfs_surfaceflinger.json

PLUGIN_TYPE = egldeviceintegrations
PLUGIN_CLASS_NAME = QEglFSSurfaceFlingerIntegrationPlugin
load(qt_plugin)