Assembly Instructions
=====================

CamAdapter consists of:

* Embedded computer: **[NVIDIA Jetson TK1](http://www.nvidia.com/object/jetson-tk1-embedded-dev-kit.html)**
* CAN-Bus adapter: **[Innodisk EMUC-B202](https://www.innodisk.com/en/products/embedded-peripheral/communication/EMUC-B202)**
* DJI Zenmuse connection: **Mounting board from [Zenmuse Gimbal Mounting Bracket](http://store.dji.com/product/matrice-600-zenmuse-x3-x5-gimbal-mounting-bracket)**
* AHRS device: **[Pixhawk](http://pixhawk.org/modules/pixhawk) with ArduPilot** or similar
* DC-DC converter: **+12VDC, 3A output**

**Attention: The software is compatible only with NVIDIA K1 platform at the moment!**

Diagram
-------

<center><img src="/img/camadapter-diagram.svg" width="75%" alt="AirMast CamAdapter Diagram"></center>

Schematic
---------

<center><img src="/img/camadapter-sch.svg" width="100%" alt="AirMast CamAdapter Schematic"></center>

Stabilization
-------------

In order to stabilize the gimbal against drone's tilt one need to use separate AHRS device. One may use flight controller for that purposes. There is a special software which gets attitude information from autopilot and sends it to CamAdater. See [attitude-feeder section](/camadapter/software/#attitude-feeder) for details.
