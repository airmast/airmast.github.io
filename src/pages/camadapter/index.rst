CamAdapter
==========

AirMast CamAdapter is a device for operating with DJI Zenmuse series gimbals via Ethernet interface. CamAdapter allows to control gimbal and camera using embedded web-application via browser as well as via API requests. Also CamAdapter implements video streaming from camera by TCP/IP.

.. figure:: /img/camadapter/camadapter.svg
   :width: 50%
   :align: center
   :alt: AirMast CamAdapter

Supported Gimbals
-----------------

+-------------------+----------------+--------------+-----------------+------------+
| DJI Zenmuse Model | Gimbal control | Video stream | Camera settings |  Shooting  |
+===================+================+==============+=================+============+
| X3                | Yes            | Yes          | Yes             | Yes        |
+-------------------+----------------+--------------+-----------------+------------+
| X4S               | Not tested     | Not tested   | No              | No         |
+-------------------+----------------+--------------+-----------------+------------+
| X5                | Not tested     | Not tested   | No              | Not tested |
+-------------------+----------------+--------------+-----------------+------------+
| X5R               | Not tested     | Not tested   | No              | Not tested |
+-------------------+----------------+--------------+-----------------+------------+
| X5S               | Not tested     | Not tested   | No              | No         |
+-------------------+----------------+--------------+-----------------+------------+
| X7                | Not tested     | Not tested   | No              | No         |
+-------------------+----------------+--------------+-----------------+------------+
| XT                | Yes            | Yes          | Yes             | Yes        |
+-------------------+----------------+--------------+-----------------+------------+
| Z3                | Yes            | Yes          | Partially       | Yes        |
+-------------------+----------------+--------------+-----------------+------------+
| Z30               | Yes            | Yes          | Partially       | Yes        |
+-------------------+----------------+--------------+-----------------+------------+

Specifications
--------------

+----------------------------------------+------------------------------+
| **General Specifications**                                            |
+----------------------------------------+------------------------------+
| Dimensions (case only)                 | **185 x 150 x 20 mm**        |
+----------------------------------------+------------------------------+
| Dimensions (without gimbal,            | **211 x 180 x 35 mm**        |
| with ears and spacers)                 |                              |
+----------------------------------------+------------------------------+
| Weight (without gimbal)                | **360 g**                    |
+----------------------------------------+------------------------------+
| Operating temperature                  | **0° to 40°C**               |
+----------------------------------------+------------------------------+
| Storage temperature                    | **−20° to 60°C**             |
+----------------------------------------+------------------------------+
| **Electrical Specifications**                                         |
+----------------------------------------+------------------------------+
| Power voltage                          | **24V (6S) nom.**            |
+----------------------------------------+------------------------------+
| Power consumption                      | **50W max.**                 |
+----------------------------------------+------------------------------+
| **Embedded Computer Specifications**                                  |
+----------------------------------------+------------------------------+
| Name                                   | **NVIDIA Jetson TK1**        |
+----------------------------------------+------------------------------+
| CPU                                    | **NVIDIA Tegra K1            |
|                                        | (quad-core ARM Cortex-A15)** |
+----------------------------------------+------------------------------+
| Frequency                              | **2.07 GHz max.**            |
+----------------------------------------+------------------------------+
| RAM                                    | **2 GB**                     |
+----------------------------------------+------------------------------+
| eMMC                                   | **16 GB**                    |
+----------------------------------------+------------------------------+
| Ethernet                               | **1 Gbit/s**                 |
+----------------------------------------+------------------------------+
| OS                                     | **Linux (Ubuntu 14.04 LTS)** |
+----------------------------------------+------------------------------+
| **Video Stream Specifications**                                       |
+----------------------------------------+------------------------------+
| Format                                 | **H.264 (without keyframes)**|
+----------------------------------------+------------------------------+
| Protocol                               | **TCP**                      |
+----------------------------------------+------------------------------+
| Embedded preview                       | **WebP**                     |
+----------------------------------------+------------------------------+
| Resolution (depends on camera model)   | **1280x720 max.**            |
+----------------------------------------+------------------------------+
| Latency (depends on player hardware)   | **500 ms min.**              |
+----------------------------------------+------------------------------+


FAQ
---

|q| **Which CPU the CamAdapter software is compatible with?**

|a| *NVIDIA Tegra K1 at the moment.*

|q| **Is it possible to output video stream through HDMI?**

|a| *Yes, by running video player on embedded computer (e.g. FFMPEG).*


Getting Started
---------------

The device is assumed to be assembled by the user. Here you will find all required information.

Documentation consists of:

Assembly instructions
~~~~~~~~~~~~~~~~~~~~~

* |html| `HTML </camadapter/assembly/>`__                                                                                             
* |pdf| `PDF <https://github.com/airmast/airmast.github.io/releases/download/r0/camadapter-assembly-v0.pdf>`__ **V0** *(18.10.2017)* 

Software installation
~~~~~~~~~~~~~~~~~~~~~

*  |html| `HTML </camadapter/software/>`__

API Reference
~~~~~~~~~~~~~

* |html| `HTML </camadapter/api/>`__

* |pdf| `PDF <https://github.com/airmast/airmast.github.io/releases/download/r0/camadapter-api-v0.pdf>`__ **V0** *(18.10.2017)*

.. |html| image:: /img/html.svg
   :height: 30px
   :align: middle
   :class: icon
   :alt: HTML

.. |pdf| image:: /img/pdf.svg
   :height: 30px
   :align: middle
   :class: icon
   :alt: PDF

.. |q| image:: /img/q.svg
   :height: 25px
   :align: middle
   :class: icon
   :alt: 
   
.. |a| image:: /img/a.svg
   :height: 25px
   :align: middle
   :class: icon
   :alt: A