color_temperature
=================

Set color temperature
---------------------

.. class:: request-table-3

+--------------+---------------------------------------------+-------------+
| Request Type |                     URL                     | DJI Zenmuse |
+==============+=============================================+=============+
| POST         | **/api/v1/color_temperature/**\ ``<value>`` | X3, Z3      |
+--------------+---------------------------------------------+-------------+

``<value>`` is an integer value of color temperature expressed in kelvin.

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/color_temperature/2700

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
