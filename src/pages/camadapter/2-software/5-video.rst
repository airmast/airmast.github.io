Video Processing
================

Firstly install `FFMPEG <https://ffmpeg.org/>`__ on your host computer.

In order to view live video stream from Zenmuse camera run on host::

   ffplay tcp://192.168.0.17:9123 -flags2 showall -fflags nobuffer

Video stream specifications:

* Format: **H.264 (without key frames)**
* Resolution: **up to 1280x720** (depends on Zenmuse model)
* Protocol: **TCP**
* Port: **9123**

Before processing video you are likely to decode the stream. You may use `GStreamer <https://gstreamer.freedesktop.org/>`__ for that purposes::

   gst-launch-1.0 tcpclientsrc host=192.168.0.17 port=9123 ! h264parse ! avdec_h264 ! xvimagesink

You a free to use any processing software like `OpenCV <https://opencv.org/>`__ etc. both on host or board.