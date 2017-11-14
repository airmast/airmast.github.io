Troubleshooting
===============

Unable to connect to web application
------------------------------------

**Solution:** Check whether the application is run on the board::

   pgrep -a camadapterd

If you see nothing try to run it manually (by root user)::

   camadapterd

Check for error messages and send them to our support team.

Gimbal controls do not work
---------------------------

**Solution:** Check CAN connection on the board (`CAN utils <https://github.com/linux-can/can-utils>`__ are to be installed)::

   candump can0

You should see CAN stream. If not please contact our support team.

There is a lag in video stream
------------------------------

**Solution:** Try to reduce frame rate::

   ffplay tcp://192.168.0.17:9123 -flags2 showall -fflags nobuffer \
          -vf "setpts=0.5*N/FRAME_RATE/TB"
