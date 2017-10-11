camera
======

Overall camera control
----------------------

.. class:: request-table-2

+--------------+---------------------------------------+
| Request Type |                  URL                  |
+==============+=======================================+
| POST         | **/api/v1/camera/**\<camera_action_\> |
+--------------+---------------------------------------+

camera_action
~~~~~~~~~~~~~

.. class:: option-table-3

+-----------------+-------------+----------------------------------------+
|     Option      | DJI Zenmuse |              Description               |
+=================+=============+========================================+
| **reset**       | Any         | Reset Zenmuse camera settings          |
+-----------------+-------------+----------------------------------------+
| **trigger_ffc** | XT          | Trigger flat-field correction manually |
+-----------------+-------------+----------------------------------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/camera/reset

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }

Camera status
-------------

Return current values of camera settings.

.. class:: request-table-3

+--------------+--------------------+-------------+
| Request Type |        URL         | DJI Zenmuse |
+==============+====================+=============+
| GET          | **/api/v1/camera** | X3, Z3, XT  |
+--------------+--------------------+-------------+

JSON Response
~~~~~~~~~~~~~

.. class:: parameter-table-4

+-------------------------+--------+-------------+------------------------------------------+
|        Parameter        |  Type  | DJI Zenmuse |               Description                |
+=========================+========+=============+==========================================+
| **сolor**               | string | X3, XT, Z3  | See color_ API description               |
+-------------------------+--------+-------------+------------------------------------------+
| **color_system**        | string | X3, XT, Z3  | See color_system_ API description        |
+-------------------------+--------+-------------+------------------------------------------+
| **color_temperature**   | number | X3, Z3      | See color_temperature_ API description   |
+-------------------------+--------+-------------+------------------------------------------+
| **digital_zoom**        | number | Z3          | Current value of digital zoom            |
+-------------------------+--------+-------------+------------------------------------------+
| **exposure_mode**       | string | X3, Z3      | See exposure_mode_ API description       |
+-------------------------+--------+-------------+------------------------------------------+
| **ev**                  | number | X3, Z3      | See ev_ API description                  |
+-------------------------+--------+-------------+------------------------------------------+
| **ffc_mode**            | string | XT          | See ffc_mode_ API description            |
+-------------------------+--------+-------------+------------------------------------------+
| **image_format**        | string | X3, XT, Z3  | See image_format_ API description        |
+-------------------------+--------+-------------+------------------------------------------+
| **iso**                 | number | X3, Z3      | See iso_ API description                 |
+-------------------------+--------+-------------+------------------------------------------+
| **isotherm**            | string | XT          | See isotherm_ API description            |
+-------------------------+--------+-------------+------------------------------------------+
| **isotherm_lower**      | number | XT          | See isotherm_lower_ API description      |
+-------------------------+--------+-------------+------------------------------------------+
| **isotherm_units**      | string | XT          | See isotherm_units_ API description      |
+-------------------------+--------+-------------+------------------------------------------+
| **isotherm_middle**     | number | XT          | See isotherm_middle_ API description     |
+-------------------------+--------+-------------+------------------------------------------+
| **isotherm_upper**      | number | XT          | See isotherm_upper_ API description      |
+-------------------------+--------+-------------+------------------------------------------+
| **gain_mode**           | string | XT          | See gain_mode_ API description           |
+-------------------------+--------+-------------+------------------------------------------+
| **magnification**       | number | XT          | See magnification_ API description       |
+-------------------------+--------+-------------+------------------------------------------+
| **measure_temperature** | string | XT          | See measure_temperature_ API description |
+-------------------------+--------+-------------+------------------------------------------+
| **mode**                | string | X3, XT, Z3  | See mode_ API description                |
+-------------------------+--------+-------------+------------------------------------------+
| **roi**                 | string | XT          | See roi_ API description                 |
+-------------------------+--------+-------------+------------------------------------------+
| **scene**               | string | XT          | See scene_ API description               |
+-------------------------+--------+-------------+------------------------------------------+
| **scene_ace**           | number | XT          | See scene_ace_ API description           |
+-------------------------+--------+-------------+------------------------------------------+
| **scene_brightness**    | number | XT          | See scene_brightness_ API description    |
+-------------------------+--------+-------------+------------------------------------------+
| **scene_contrast**      | number | XT          | See scene_contrast_ API description      |
+-------------------------+--------+-------------+------------------------------------------+
| **scene_dde**           | number | XT          | See scene_dde_ API description           |
+-------------------------+--------+-------------+------------------------------------------+
| **scene_sso**           | number | XT          | See scene_sso_ API description           |
+-------------------------+--------+-------------+------------------------------------------+
| **shutter**             | string | X3, Z3      | See shutter_ API description             |
+-------------------------+--------+-------------+------------------------------------------+
| **temperature**         | number | XT          | Current value of measured temperature    |
+-------------------------+--------+-------------+------------------------------------------+
| **video_format**        | string | X3, Z3      | See video_format_ API description        |
+-------------------------+--------+-------------+------------------------------------------+
| **video_size**          | string | X3, Z3      | See video_size_ API description          |
+-------------------------+--------+-------------+------------------------------------------+
| **white_balance**       | string | X3, Z3      | See white_balance_ API description       |
+-------------------------+--------+-------------+------------------------------------------+

.. <html>

.. _color: /camadapter/api/color/
.. _color_system: /camadapter/api/color_system/
.. _color_temperature: /camadapter/api/color_temperature/
.. _exposure_mode: /camadapter/api/exposure_mode/
.. _ev: /camadapter/api/ev/
.. _ffc_mode: /camadapter/api/ffc_mode/
.. _image_format: /camadapter/api/image_format/
.. _iso: /camadapter/api/iso/
.. _isotherm: /camadapter/api/isotherm/
.. _isotherm_lower: /camadapter/api/isotherm_lower/
.. _isotherm_units: /camadapter/api/isotherm_units/
.. _isotherm_middle: /camadapter/api/isotherm_middle/
.. _isotherm_upper: /camadapter/api/isotherm_upper/
.. _gain_mode: /camadapter/api/gain_mode/
.. _magnification: /camadapter/api/magnification/
.. _measure_temperature: /camadapter/api/measure_temperature/
.. _mode: /camadapter/api/mode/
.. _roi: /camadapter/api/roi/
.. _scene: /camadapter/api/scene/
.. _scene_ace: /camadapter/api/scene_ace/
.. _scene_brightness: /camadapter/api/scene_brightness/
.. _scene_contrast: /camadapter/api/scene_contrast/
.. _scene_dde: /camadapter/api/scene_dde/
.. _scene_sso: /camadapter/api/scene_sso/
.. _shutter: /camadapter/api/shutter/
.. _temperature: /camadapter/api/temperature/
.. _video_format: /camadapter/api/video_format/
.. _video_size: /camadapter/api/video_size/
.. _white_balance: /camadapter/api/white_balance/

.. </html>

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    GET http://localhost:8123/api/v1/camera

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    /* DJI Zenmuse XT */
    {
      "color": "none",
      "color_system": "ntsc",
      "image_format": "jpeg",
      "mode": "video",
      "ffc_mode": "auto",
      "isotherm": "on",
      "isotherm_units": "percentage",
      "isotherm_lower": 90,
      "isotherm_middle": 95,
      "isotherm_upper": 100,
      "gain_mode": "auto",
      "magnification": 2.0,
      "measure_temperature": "on",
      "roi": "full",
      "scene": "default",
      "scene_ace": 1,
      "scene_brightness": 5000,
      "scene_contrast": 111,
      "scene_dde": 33,
      "scene_sso": 75,
      "temperature": 25
    }
