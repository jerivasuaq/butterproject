#!/bin/sh
CONTAINER_ID="butter-${UID}"

xhost +local:

docker run \
	-ti --rm \
	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
	-e DISPLAY=unix${DISPLAY} \
	-w /usr/src/app/butter-desktop \
	--entrypoint=/bin/bash \
	jerivas/popcorntime


#	-v /etc/machine-id:/etc/machine-id:ro \
#	-v /run/user/${UID}/pulse:/run/user/pulse:ro \
#	-e XUID=${UID} \
#	-v /etc/localtime:/etc/localtime:ro \
