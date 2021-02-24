TARGET = qeglfs-surfaceflinger-integration

QT += core-private gui-private eglfsdeviceintegration-private

DEFINES += QT_EGL_NO_X11

QMAKE_LFLAGS  += -L$$PWD/lib -L/data/data/com.termux/files/usr/lib -Wl,-rpath=/system/lib64:/data/data/com.termux/files/usr/lib -Wl,--enable-new-dtags -Wl,--as-needed -Wl,-z,relro,-z,now

INCLUDEPATH += $$PWD/../../api \
               $$PWD/include/android_frameworks_native/include \
               $$PWD/include/android_hardware_libhardware/include \
               $$PWD/include/android_system_core/include

CONFIG += egl

SOURCES += $$PWD/qeglfs_sf_main.cpp \
           $$PWD/qeglfs_sf_integration.cpp

HEADERS += $$PWD/qeglfs_sf_integration.h

LIBS += -lui -lgui -lutils -lcutils -lEGL

OTHER_FILES += $$PWD/eglfs_surfaceflinger.json

PLUGIN_TYPE = egldeviceintegrations
PLUGIN_CLASS_NAME = QEglFSSurfaceFlingerIntegrationPlugin
load(qt_plugin)
