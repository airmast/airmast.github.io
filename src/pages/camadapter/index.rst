CamAdapter
==========

AirMast CamAdapter is a device for operating with DJI Zenmuse series gimbals via Ethernet interface. CamAdapter allows controlling gimbal and camera using embedded web-application via browser as well as via API requests. Also, CamAdapter implements video streaming from the camera by TCP/IP.

.. figure:: /img/camadapter/camadapter.svg
   :width: 50%
   :align: center
   :alt: AirMast CamAdapter

Applications
------------

* Video surveillance
* Gimbal wired remote control
* Computer vision
* Gimbal demonstration

Supported Gimbals
-----------------

+-------------------+----------------+--------------+-----------------+----------------------+
| DJI Zenmuse Model | Gimbal control | Video stream | Camera settings | Photo/Video Shooting |
+===================+================+==============+=================+======================+
| X3                | Yes            | Yes          | Yes             | Yes                  |
+-------------------+----------------+--------------+-----------------+----------------------+
| X5                | Not tested     | Not tested   | Partially       | Not tested           |
+-------------------+----------------+--------------+-----------------+----------------------+
| X5R               | Not tested     | Not tested   | Partially       | Not tested           |
+-------------------+----------------+--------------+-----------------+----------------------+
| XT                | Yes            | Yes          | Yes             | Yes                  |
+-------------------+----------------+--------------+-----------------+----------------------+
| Z3                | Yes            | Yes          | Yes             | Yes                  |
+-------------------+----------------+--------------+-----------------+----------------------+
| Z30\ [1]_         | Yes            | Yes          | Partially       | Yes                  |
+-------------------+----------------+--------------+-----------------+----------------------+

.. [1] **DJI Zenmuse Z30** is supported using a `special adapter <https://www.adorama.com/djiz30gam600.html>`__. Note that the current hardware design does not suppose this adapter to be mounted. One needs to develop a custom design in order to connect Z30.

**Zenmuse X4S, X5S, X7** cameras not supported because they do not have embedded processing unit which has been moved on to the drone (DJI Inspire 2, Matrice 200 Series).

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
| Operating temperature                  | **−10° to +40°C**            |
+----------------------------------------+------------------------------+
| Storage temperature                    | **−20° to +60°C**            |
+----------------------------------------+------------------------------+
| **Electrical Specifications**                                         |
+----------------------------------------+------------------------------+
| Power voltage                          | **16V to 48V**               |
+----------------------------------------+------------------------------+
| Power consumption                      | **50W max.**                 |
+----------------------------------------+------------------------------+
| **Embedded Computer Specifications**                                  |
+----------------------------------------+------------------------------+
| Name                                   | **Toradex Apalis TK1**       |
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
| Embedded preview                       | **WebM**                     |
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

|a| *Yes, by running video player on the embedded computer (e.g., FFMPEG).*


Getting Started
---------------

The device is assumed to be assembled by the user. Here you will find all required information.

Documentation consists of:

Assembly instructions
~~~~~~~~~~~~~~~~~~~~~

* |html| `HTML </camadapter/assembly/>`__                                                                                             
* |pdf| `PDF <https://github.com/airmast/airmast.github.io/releases/download/r2/camadapter-assembly-v1.pdf>`__ **V1** *(15.12.2017)* 

Software User Guide
~~~~~~~~~~~~~~~~~~~

* |html| `HTML </camadapter/software/>`__
* |pdf| `PDF <https://github.com/airmast/airmast.github.io/releases/download/r2/camadapter-software-v1.pdf>`__ **V1** *(15.12.2017)*


API Reference
~~~~~~~~~~~~~

* |html| `HTML </camadapter/api/>`__
* |pdf| `PDF <https://github.com/airmast/airmast.github.io/releases/download/r2/camadapter-api-v1.pdf>`__ **V1** *(15.12.2017)*

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
   :alt: Q
   
.. |a| image:: /img/a.svg
   :height: 25px
   :align: middle
   :class: icon
   :alt: A
