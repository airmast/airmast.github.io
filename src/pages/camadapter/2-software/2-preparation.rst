Preparing Embedded Computer
===========================

Initial Setup
-------------

Connect your Jetson TK1 to router using Ethernet cable. Router should be connected to Internet. Power up the board.

Become aware about Jetson TK1’s IP-address using standard access to your router. There is a good practice to make IP-address fixed. Let us assume IP address to be ``192.168.0.17`` for example.

We assume Ubuntu Linux is used on host computer. You may use any other host OS that supports SSH/SCP protocol and FFMPEG.

In order to connect to Jetson TK1 use remote access over SSH. Default user has username ubuntu and password ubuntu. Run on host (substitute IP address with your one)::

   ssh ubuntu@192.168.0.17

You should see something like following::

   The authenticity of host '192.168.0.17 (192.168.0.17)' can't be established.
   ECDSA key fingerprint is SHA256:GS/96BHj/MoQ1OPeG25oNGJWfAE+wtfn8lyEM4JBkkE.
   Are you sure you want to continue connecting (yes/no)? 

Type ``yes`` and press enter. While prompted to enter the password type ``ubuntu`` and press enter.

Good idea is to update all packages. Run on board::

   sudo apt update
   sudo apt upgrade -y

Installing Software
-------------------

Firstly install `snapd <https://www.ubuntu.com/desktop/snappy>`__ if it is not yet installed::

   sudo apt install snapd

Now you may install the CamAdapter application::

   sudo snap install camadapterd

CAN Bus Configuration
---------------------

Before using ``camadapterd`` one should setup and configure CAN bus on Jetson TK1.

By default built-in default Linux OS image have not CAN bus support. In order to enable it one should build following kernel modules::

   can.ko
   can-dev.ko
   can-raw.ko

 