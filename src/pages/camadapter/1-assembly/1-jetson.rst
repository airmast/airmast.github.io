Jetson Edition
==============

This edition of CamAdapter is based on `NVIDIA Jetson TK1 <http://www.nvidia.com/object/jetson-tk1-embedded-dev-kit.html>`_.

Important notice
----------------

* The software is compatible **only with NVIDIA K1** platform at the moment.
* This version of CamAdapter supports **DJI Zenmuse X3/X5/XT/Z3 only.**
* Tested with **DJI Zenmuse X3/XT/Z3**. 

Contents
--------

CamAdapter consists of:

* Embedded computer: `NVIDIA Jetson TK1 <http://www.nvidia.com/object/jetson-tk1-embedded-dev-kit.html>`__
* CAN-Bus adapter: `Innodisk EMUC-B202 <https://www.innodisk.com/en/products/embedded-peripheral/communication/EMUC-B202>`__
* DJI Zenmuse connection: Mounting board from `Zenmuse Gimbal Mounting Bracket <http://store.dji.com/product/matrice-600-zenmuse-x3-x5-gimbal-mounting-bracket>`__
* AHRS device: `Pixhawk <http://pixhawk.org/modules/pixhawk>`__ with ArduPilot or similar
* DC-DC converter: LM2596 based, +12VDC, 3A output
* M3 screws, bars and nuts

Also you need to manufacture some case parts:

* **1x** Box (`STL-model <https://github.com/airmast/hardware/blob/master/camadapter-jetson/3d/box.stl>`__)
* **1x** EMUC spacer (`STL-model <https://github.com/airmast/hardware/blob/master/camadapter-jetson/3d/emuc-spacer.stl>`__)
* **4x** Ear spacer (`STL-model <https://github.com/airmast/hardware/blob/master/camadapter-jetson/3d/ear-spacer.stl>`__)
* **1x** Top board (`DXF-draft <https://github.com/airmast/hardware/blob/master/camadapter-jetson/2d/top.dxf>`__)
* **1x** Bottom board (`DXF-draft <https://github.com/airmast/hardware/blob/master/camadapter-jetson/2d/bottom.dxf>`__)
* **4x** Ear board (`DXF-draft <https://github.com/airmast/hardware/blob/master/camadapter-jetson/2d/ear.dxf>`__)

Diagram
-------

.. figure:: /img/camadapter/assembly/camadapter-diagram.svg
   :width: 66%
   :align: center
   :alt: AirMast CamAdapter Diagram

Schematic
---------

.. figure:: /img/camadapter/assembly/camadapter-sch.svg
   :width: 100%
   :align: center
   :alt: AirMast CamAdapter Schematic

Step-by-step assembling
-----------------------

1. Desolder COM and audio connectors from Jetson TK1 and solder fan wires directly to receptacle in order to reduce overall board height. 

   .. figure:: /img/camadapter/assembly/jetson.svg
      :width: 50%
      :align: center
      :alt: NVIDIA Jetson TK1

2. Remove DJI Mounting Board from bracket.

   .. figure:: /img/camadapter/assembly/dji-board.jpg
      :width: 50%
      :align: center
      :alt: DJI Mounting Board

3. Mount DJI Mounting Board under bottom board using screws (holes are marked red). Pass power cable through hole marked green. Connect video and CAN-bus cables.

   .. figure:: /img/camadapter/assembly/bottom-dji.svg
      :width: 50%
      :align: center
      :alt: Mounting DJI Mounting Board

4. Place box part onto the bottom board then mount Jetson TK1 onto them with M3 screws and bars.

   .. figure:: /img/camadapter/assembly/bottom-jetson.svg
      :width: 50%
      :align: center
      :alt: Mounting Jetson TK1

5. Insert EMUC-B202 board to mPCIe slot. Fix it with M3 screws and nuts inserting EMUC spacer between EMUC and bottom board. Connect video cable to micro-USB connector on Jetson and CAN-bus cable to top connector on EMUC-B202.

   .. figure:: /img/camadapter/assembly/bottom-emuc.svg
      :width: 50%
      :align: center
      :alt: Mounting EMUC-B202

6. Mount DC-DC onto top board using M3 screws and nuts. Solder power wires from DJI Mounting Board and input power wires to IN+/IN- pads and Jetson power cable to OUT+/OUT- pads.

  .. figure:: /img/camadapter/assembly/top-dcdc.svg
      :width: 50%
      :align: center
      :alt: Mounting DC-DC

7. Close the box with top board and fix it using M3 screws.

8. Fix ear boards under the bottom board inserting rubber dampeners.

9. Mount assembled device on DJI S900 frame inserting ear spacers and connect power and Ethernet cables. 

Stabilization
-------------

In order to stabilize the gimbal against drone's tilt one need to use separate AHRS device. One may use flight controller for that purposes. There is a special software which gets attitude information from autopilot and sends it to CamAdater. See `attitude-feeder
application <https://github.com/airmast/attitude-feeder>`__ for details.
