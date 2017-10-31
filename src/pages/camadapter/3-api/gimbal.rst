gimbal
======

Execute gimbal centering by yaw
-------------------------------

.. class:: request-table-3

+--------------+---------------------------+-------------+
| Request Type |            URL            | DJI Zenmuse |
+==============+===========================+=============+
| POST         | **/api/v1/gimbal/center** | Any         |
+--------------+---------------------------+-------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/gimbal/center

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }

Get gimbal attitude
-------------------

.. class:: request-table-3

+--------------+--------------------+-------------+
| Request Type |        URL         | DJI Zenmuse |
+==============+====================+=============+
| GET          | **/api/v1/gimbal** | Any         |
+--------------+--------------------+-------------+

JSON Response
~~~~~~~~~~~~~

.. class:: parameter-table-3

+----------------+--------+----------------------------------------+
|   Parameter    |  Type  |              Description               |
+================+========+========================================+
| **own_roll**   | number | Roll angle referenced to frame (rad)   |
+----------------+--------+----------------------------------------+
| **own_pitch**  | number | Pitch angle referenced to frame (rad)  |
+----------------+--------+----------------------------------------+
| **own_yaw**    | number | Yaw angle referenced to frame (rad)    |
+----------------+--------+----------------------------------------+
| **stab_roll**  | number | Roll angle referenced to ground (rad)  |
+----------------+--------+----------------------------------------+
| **stab_pitch** | number | Pitch angle referenced to ground (rad) |
+----------------+--------+----------------------------------------+
| **stab_yaw**   | number | Yaw angle referenced to ground (rad)   |
+----------------+--------+----------------------------------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    GET http://localhost:8123/api/v1/gimbal

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true,
      "own_roll": 0.255,
      "own_pitch": 1,
      "own_yaw": -1.0,
      "stab_roll": 0,
      "stab_pitch": 1.5707,
      "stab_yaw": 0
    }
