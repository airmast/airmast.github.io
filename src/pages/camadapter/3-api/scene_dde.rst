scene_dde
=========

Set digital detail enhancement (DDE)
------------------------------------

.. class:: request-table-3

+--------------+-------------------------------------+-------------+
| Request Type |                 URL                 | DJI Zenmuse |
+==============+=====================================+=============+
| POST         | **/api/v1/scene_dde/**\ ``<value>`` | XT          |
+--------------+-------------------------------------+-------------+

``<value>`` is a integer value of DDE (from −20 to 100). Negative values
soften the image and positive values sharpen it.

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/scene_dde/33

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
