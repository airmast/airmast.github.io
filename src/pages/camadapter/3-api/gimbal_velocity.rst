gimbal_velocity
===============

Gimbal positioning
------------------

.. class:: request-table-3

+--------------+------------------------------------------------+-------------+
| Request Type |                      URL                       | DJI Zenmuse |
+==============+================================================+=============+
| POST         | **/api/v1/gimbal_velocity/**\<pan_\>,\<tilt_\> | Any         |
+--------------+------------------------------------------------+-------------+

Parameters
~~~~~~~~~~

.. class:: parameter-table-3

+-----------+--------+----------------------------------------------------------+
| Parameter |  Type  |                       Description                        |
+===========+========+==========================================================+
| <_`pan`>  | number | Gimbal pan velocity, negative to left, positive to right |
+-----------+--------+----------------------------------------------------------+
| <_`tilt`> | number | Gimbal tilt velocity, negative up, positive down         |
+-----------+--------+----------------------------------------------------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/gimbal_velocity/-1024,128

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
