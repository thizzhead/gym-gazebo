#!/bin/bash
xhost +local:docker
docker run --privileged -it \
        --volume=/tmp/.X11-unix:/tmp/.X11-unix \
        --device=/dev/dri:/dev/dri \
        --env="DISPLAY=$DISPLAY" \
        -e "TERM=xterm-256color" \
        --cap-add SYS_ADMIN --device /dev/fuse \
        erlerobotics/gym-gazebo:latest \
        bash