exposure_mode
=============

Set exposure mode
-----------------

.. class:: request-table-2

+--------------+---------------------------------------------------+
| Request Type |                        URL                        |
+==============+===================================================+
| POST         | **/api/v1/exposure_mode/**\<exposure_mode_value_> |
+--------------+---------------------------------------------------+

exposure_mode_value
~~~~~~~~~~~~~~~~~~~

.. class:: option-table-3

+--------------+-------------+--------------------------------+
|    Option    | DJI Zenmuse |          Description           |
+==============+=============+================================+
| **aperture** | Z30         | Set exposure mode to apperture |
+--------------+-------------+--------------------------------+
| **auto**     | X3, Z3, Z30 | Set exposure mode to auto      |
+--------------+-------------+--------------------------------+
| **shutter**  | X3, Z3, Z30 | Set exposure mode to shutter   |
+--------------+-------------+--------------------------------+
| **manual**   | X3, Z3, Z30 | Set exposure mode to manual    |
+--------------+-------------+--------------------------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/exposure_mode/auto

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
