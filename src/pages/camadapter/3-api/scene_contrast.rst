scene_contrast
==============

Set scene contrast
------------------

.. class:: request-table-3

+--------------+------------------------------------------+-------------+
| Request Type |                   URL                    | DJI Zenmuse |
+==============+==========================================+=============+
| POST         | **/api/v1/scene_contrast/**\ ``<value>`` | XT          |
+--------------+------------------------------------------+-------------+

``<value>`` is an integet value of contrast (from 0 to 255).

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/scene_contrast/100

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
