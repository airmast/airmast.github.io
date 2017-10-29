Troubleshooting
===============

**Problem:** Unable to connect to web application.

**Solution:** Check whether application is run on the board::

   pgrep -a camadapterd

If you see nothing try to run it manually::

   camadapterd

Check for error messages and send them to our support team.

**Problem:** Gimbal controls does not work.

**Solution:** Check CAN connection on the board (`CAN utils <https://github.com/linux-can/can-utils>`__ are to be installed)::

   candump can0

You should see CAN stream. If not please contact to our support team.

**Problem:** There is a lag in video stream.

**Solution:** Try to reduce frame rate::

   ffplay tcp://192.168.0.17:9123 -flags2 showall -fflags nobuffer \
          -vf "setpts=0.5*N/FRAME_RATE/TB"
