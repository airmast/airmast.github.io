scene_brightness
================

Set scene brightness
--------------------

.. class:: request-table-3

+--------------+--------------------------------------------+-------------+
| Request Type |                    URL                     | DJI Zenmuse |
+==============+============================================+=============+
| POST         | **/api/v1/scene_brightness/**\ ``<value>`` | XT          |
+--------------+--------------------------------------------+-------------+

``<value>`` is an integer value of brightness (from 0 to 16383).

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/scene_brightness/7000

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
