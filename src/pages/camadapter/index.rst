CamAdapter
==========

AirMast CamAdapter is a device for using with DJI Zenmuse series
gimbals. CamAdapter allows to control gimbal and camera using embedded
web-application via browser as well as via API requests. Also CamAdapter
implements video streaming from camera by Ethernet.

.. figure:: /img/camadapter.svg
   :width: 50%
   :align: center
   :alt: AirMast CamAdapter

Supported Gimbals
-----------------

+---------------------+------------------+----------------+-------------------+
| DJI Zenmuse Model   | Gimbal control   | Video stream   | Camera settings   |
+=====================+==================+================+===================+
| X3                  | Yes              | Yes            | Yes               |
+---------------------+------------------+----------------+-------------------+
| X4S                 | Not tested       | Not tested     | No                |
+---------------------+------------------+----------------+-------------------+
| X5                  | Not tested       | Not tested     | No                |
+---------------------+------------------+----------------+-------------------+
| X5R                 | Not tested       | Not tested     | No                |
+---------------------+------------------+----------------+-------------------+
| X5S                 | Not tested       | Not tested     | No                |
+---------------------+------------------+----------------+-------------------+
| XT                  | Yes              | Yes            | Yes               |
+---------------------+------------------+----------------+-------------------+
| Z3                  | Yes              | Yes            | Yes               |
+---------------------+------------------+----------------+-------------------+
| Z30                 | Yes              | Yes            | Partially         |
+---------------------+------------------+----------------+-------------------+

Software Demo
-------------

You may run CamAdapter demo application in order to debug your own
client software or just go get introduced with embedded web-application.

Demo application requires `Node.js <https://nodejs.org>`__ installed.

Run in command line (``sudo`` may be required in some operating
systems)::

    npm install -g camadapter-demo

After package installation just run::

    camadapter-demo

Then open in browser: http://localhost:8123/

Please refer to `camadapter-demo NPM package info <https://www.npmjs.com/package/camadapter-demo>`__ for details.

Getting Started
---------------

The device is assumed to be assembled by the user. Here you will find
all required information.

Documentation consists of:

-  `Assembly instructions </camadapter/assembly/>`__
-  `Software installation </camadapter/software/>`__
-  `API Reference </camadapter/api/>`__
