BeagleBone Edition (experimental)
=================================

This edition of CamAdapter is based on `BeagleBone Black <http://beagleboard.org/black>`__.

Important notice
----------------

* The software is compatible **only with NVIDIA Tegra K1 and TI AM335x** platforms at the moment.
* This version of CamAdapter supports **DJI Zenmuse X3/X5/X5R/XT/Z3 only.**
* **DJI Zenmuse Z30** is supported using a `special adapter <https://www.adorama.com/djiz30gam600.html>`__. Note that the current hardware design does not suppose this adapter to be mounted. One needs to develop a custom design in order to connect Z30.
* Tested with **DJI Zenmuse X3/XT/Z3**.

Contents
--------

CamAdapter consists of:

* Embedded computer: `BeagleBone Black TK1 <http://beagleboard.org/black>`__
* CANBus cape board: `Logic Supply CBB-Serial <https://www.logicsupply.com/cbb-serial/>`__
* DJI Zenmuse connection: Mounting board from `Zenmuse Gimbal Mounting Bracket <http://store.dji.com/product/matrice-600-zenmuse-x3-x5-gimbal-mounting-bracket>`__
* AHRS device: `Pixhawk <http://pixhawk.org/modules/pixhawk>`__ with ArduPilot or similar
* M3 screws, bars, and nuts

Schematic
---------

*To be added.*

Stabilization
-------------

In order to stabilize the gimbal against drone inclination one need to use separate AHRS device. One may use a flight controller for that purposes. There is a special software which gets attitude information from autopilot and sends it to CamAdapter. See `attitude-feeder
application <https://github.com/airmast/attitude-feeder>`__ for details.
