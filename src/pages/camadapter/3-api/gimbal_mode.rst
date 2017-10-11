gimbal_mode
===========

Gimbal mode
-----------

.. class:: request-table-2

+--------------+------------------------------------------------+
| Request Type |                      URL                       |
+==============+================================================+
| POST         | **/api/v1/gimbal_mode/**\<gimbal_mode_value_\> |
+--------------+------------------------------------------------+

gimbal_mode_value
~~~~~~~~~~~~~~~~~

.. class:: option-table-3

+------------+-------------+-------------------------------------------------------+
|   Option   | DJI Zenmuse |                      Description                      |
+============+=============+=======================================================+
| **follow** | Any         | Follow (look at copter flight direction by yaw)       |
+------------+-------------+-------------------------------------------------------+
| **fpv**    | Any         | FPV (nearly the same thing as follow)                 |
+------------+-------------+-------------------------------------------------------+
| **free**   | Any         | Free (keep direction by yaw relatively to the ground) |
+------------+-------------+-------------------------------------------------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/gimbal_mode/follow

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
