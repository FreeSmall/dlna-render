FROM ubuntu:18.04

RUN apt-get update && \
 DEBIAN_FRONTEND=noninteractive apt-get install -y \
 libupnp-dev \
 libgstreamer1.0-dev \
 gstreamer1.0-plugins-base \
 gstreamer1.0-plugins-good \
 gstreamer1.0-plugins-bad \
 gstreamer1.0-plugins-ugly \
 gstreamer1.0-alsa \
 gstreamer1.0-libav \
 gmediarender


COPY dlna-render.sh /dlna-render.sh
RUN apt-get clean && rm -rf /var/lib/apt/lists

ENTRYPOINT [ "/dlna-render.sh" ]
