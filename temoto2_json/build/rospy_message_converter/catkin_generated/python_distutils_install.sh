#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/selmawanna/temoto2_json/src/rospy_message_converter"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/selmawanna/temoto2_json/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/selmawanna/temoto2_json/install/lib/python2.7/dist-packages:/home/selmawanna/temoto2_json/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/selmawanna/temoto2_json/build" \
    "/usr/bin/python" \
    "/home/selmawanna/temoto2_json/src/rospy_message_converter/setup.py" \
    build --build-base "/home/selmawanna/temoto2_json/build/rospy_message_converter" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/selmawanna/temoto2_json/install" --install-scripts="/home/selmawanna/temoto2_json/install/bin"
