Preparing Embedded Computer
===========================

Initial Setup
-------------

Connect your Jetson TK1 to a router using Ethernet cable. The router should be connected to the Internet. Power up the board.

Become aware of Jetson TK1’s IP-address using standard access to your router. There is a good practice to make IP-address fixed. Let us assume IP address to be ``192.168.0.17`` for example.

We assume Ubuntu Linux is used on a host computer. You may use any other host OS that supports SSH/SCP protocol and FFMPEG.

In order to connect to Jetson TK1 use remote access over SSH. Default user has username ``ubuntu`` and password ``ubuntu``. Run on the host (substitute IP address with your one)::

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

   sudo snap install camadapterd --devmode

Test whether the software installed successfully::

   camadapterd --version

Before running ``camadapterd`` some final steps are to be implemented.

CamAdapter Addons
-----------------

By default JetPack Linux OS image has not built-in CAN bus and GadgetFS support needed for running ``camadapterd``. Therefore, one needs to rebuild Linux kernel with correspondent modules.

Linux kernel building description is out of the scope of this guide but you may download prebuild binaries here (for kernel version 3.10.40):

`github.com/airmast/camadapterd/releases/download/addons/camadapter-addons.tar.gz <https://github.com/airmast/camadapterd/releases/download/addons/camadapter-addons.tar.gz>`__

This package contains required kernel objects and a startup script that combine all commands mentioned below.

CAN Bus Configuration
---------------------

Install drivers needed (being logged in as the root user or using ``sudo``)::

   insmod can.ko
   insmod can-raw.ko
   insmod can-dev.ko 

Then setup CAN bus device according to its instructions.

* Format: **SocketCAN**
* Bitrate: **1 000 000 bps**
* Default device name: **can0**

GadgetFS Configuration
----------------------

Install driver and setup device (being logged in as the root user or using ``sudo``)::

   insmod gadgetfs.ko
   mkdir /dev/camgadget
   mount -t gadgetfs none /dev/camgadget

USB OTG Configuration
---------------------

Jetson TK1 USB OTG should be switched to Device mode (by root user)::

   echo 0 > /sys/devices/platform/tegra-otg/enable_host
   echo 1 > /sys/devices/platform/tegra-otg/enable_device

Usage
-----

In order to get information about available options run::

   camadapterd --help

By default one may run the application without any parameter (by root user)::

   camadapterd 

Open in your browser: http://192.168.0.17:8123

You should see something like following:

.. figure:: /img/camadapter/software/trial.png
   :width: 85%
   :align: center
   :alt: CamAdapter Application Trial

   Trial Version Start Page

It is the right time to activate your copy of the application.