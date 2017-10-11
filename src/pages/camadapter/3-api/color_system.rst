color_system
============

Set NTSC/PAL color system
-------------------------

.. class:: request-table-3

+--------------+--------------------------------------------------+-----------------+
| Request Type |                       URL                        |   DJI Zenmuse   |
+==============+==================================================+=================+
| POST         | **/api/v1/color_system/**\<color_system_value_\> | X3, XT, Z3, Z30 |
+--------------+--------------------------------------------------+-----------------+

color_system_value
~~~~~~~~~~~~~~~~~~

.. class:: option-table-2

+----------+--------------------------+
|  Option  |       Description        |
+==========+==========================+
| **ntsc** | Set color system to NTSC |
+----------+--------------------------+
| **pal**  | Set color system to PAL  |
+----------+--------------------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/color_system/pal

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
