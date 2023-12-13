#!/bin/bash

# start X11 + Window Manager + VNC server

export DISPLAY=:99
jupyter notebook --notebook-dir=/app/code --ip='*' --port=8888 --no-browser --allow-root &
Xvfb ${DISPLAY} -ac -listen tcp -screen 0 1024x768x16 &
sleep 3
jwm -display ${DISPLAY} &
sleep 3
x11vnc -display ${DISPLAY}.0 -forever -shared -nopw
