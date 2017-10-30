Web-application
===============

Gimbal and camera control are accesible both by API and web-application.

The main objective of web-application is to check DJI Zenmuse operation and to demonstrate API capabilities.

Features
--------

* Gimbal control (Pan and Tilt)
* Gimbal centering (Pan)
* Photo/Video shooting
* Camera settings
* Video settings
* Storage management (coming soon)
* Compatible with Mozilla Firefox and Google Chrome/Chromium

Change Zenmuse Model
--------------------

When started the application automatically detects connected gimbal and opens correspondent page. But gimbal model may be overriden manually in **Application** section.

.. figure:: /img/camadapter/software/zenmuse-model.svg
   :width: 85%
   :align: center
   :alt: Change Gimbal Model

**Note:** In order to simulate various gimbals in ``camadapter-demo`` one should manually switch Zenmuse model in **Application** section.

Gimbal Control
--------------

Gimbal's pan and tilt may be controlled by buttons. Blue |<| |u| |>| |d| buttons set lower speed and yellow |<-| |uu| |->| |dd| ones set higher speed. |c| button centers the gimbal's pan.

.. |<| image:: /img/camadapter/software/arrow-blue-left.svg
   :height: 5mm
   :align: middle
   :class: icon
   :alt: Blue Left Arrow

.. |u| image:: /img/camadapter/software/arrow-blue-up.svg
   :height: 5mm
   :align: middle
   :class: icon
   :alt: Blue Up Arrow

.. |>| image:: /img/camadapter/software/arrow-blue-right.svg
   :height: 5mm
   :align: middle
   :class: icon
   :alt: Blue Right Arrow

.. |d| image:: /img/camadapter/software/arrow-blue-down.svg
   :height: 5mm
   :align: middle
   :class: icon
   :alt: Blue Down Arrow

.. |<-| image:: /img/camadapter/software/arrow-yellow-left.svg
   :height: 5mm
   :align: middle
   :class: icon
   :alt: Yellow Left Arrow

.. |uu| image:: /img/camadapter/software/arrow-yellow-up.svg
   :height: 5mm
   :align: middle
   :class: icon
   :alt: Yellow Up Arrow

.. |->| image:: /img/camadapter/software/arrow-yellow-right.svg
   :height: 5mm
   :align: middle
   :class: icon
   :alt: Yellow Right Arrow

.. |dd| image:: /img/camadapter/software/arrow-yellow-down.svg
   :height: 5mm
   :align: middle
   :class: icon
   :alt: Yellow Down Arrow

.. |c| image:: /img/camadapter/software/c-blue.svg
   :height: 5mm
   :align: middle
   :class: icon
   :alt: Blue C

.. figure:: /img/camadapter/software/gimbal.png
   :width: 85%
   :align: center
   :alt: Gimbal Control

Camera Control
--------------

General camera control allows to set date and time (which will be written to resulting shots), to reset camera settings, to make photo/video shooting.

.. figure:: /img/camadapter/software/camera-control.png
   :width: 85%
   :align: center
   :alt: Camera Control