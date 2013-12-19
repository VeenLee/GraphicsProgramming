SOURCES += \
    main.cpp

# On my system I have to specify g++ as compiler else it will use clang++ by default
QMAKE_CXX=g++
QMAKE_CC=gcc

## OpenCV settings for Unix/Linux
unix:!mac {
    message("* Using settings for Unix/Linux.")
    INCLUDEPATH += /usr/local/include/opencv

    LIBS += -L/usr/local/lib/ \
        -lopencv_core \
        -lopencv_highgui \
        -lopencv_imgproc
}

## OpenCV settings for Mac OS X
macx {
    message("* Using settings for Mac OS X.")
    INCLUDEPATH += /usr/local/include/opencv

    LIBS += -L/usr/local/lib/ \
        -lopencv_core \
        -lopencv_highgui \
        -lopencv_imgproc
}

## OpenCV settings for Windows and OpenCV 2.4.2
win32 {
    message("* Using settings for Windows.")
    INCLUDEPATH += "C:\\opencv\\build\\include" \
                   "C:\\opencv\\build\\include\\opencv" \
                   "C:\\opencv\\build\\include\\opencv2"

    LIBS += -L"C:\\opencv\\build\\x86\\vc10\\lib" \
        -lopencv_core242 \
        -lopencv_highgui242 \
        -lopencv_imgproc242
}

# Runs this app automatically after the building has succeeded
#QMAKE_POST_LINK=./$$TARGET
