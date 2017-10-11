attitude
========

Set attitude angles (roll, pitch and yaw)
-----------------------------------------

.. class:: request-table-3

+--------------+----------------------------------------------------+-------------+
| Request Type |                        URL                         | DJI Zenmuse |
+==============+====================================================+=============+
| POST         | **/api/v1/attitude/**\<roll_\>,\<pitch_\>,\<yaw_\> | Any         |
+--------------+----------------------------------------------------+-------------+

Parameters
~~~~~~~~~~

.. class:: parameter-table-3

+------------+--------+-----------------------------------------------------------+
| Parameter  |  Type  |                        Description                        |
+============+========+===========================================================+
| <_`roll`>  | number | Roll angle value expressed in radian (from *−π* to *+π*)  |
+------------+--------+-----------------------------------------------------------+
| <_`pitch`> | number | Pitch angle value expressed in radian (from *−π* to *+π*) |
+------------+--------+-----------------------------------------------------------+
| <_`yaw`>   | number | Yaw angle value expressed in radian (from *−π* to *+π*)   |
+------------+--------+-----------------------------------------------------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/attitude/0.5,-0.1,-1.57

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
