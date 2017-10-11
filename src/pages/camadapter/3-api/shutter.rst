shutter
=======

Set shutter value
-----------------

.. class:: request-table-3

+--------------+-----------------------------------------------------------------+-------------+
| Request Type |                               URL                               | DJI Zenmuse |
+==============+=================================================================+=============+
| POST         | **/api/v1/shutter/**\ ``<numerator>``\ **d**\ ``<denominator>`` | X3, Z3      |
+--------------+-----------------------------------------------------------------+-------------+

``<numerator>`` and ``<denominator>`` must be integer values.

**Example**: To set shutter to **2"** post ``2d1``; to set shutter to **1/6400** post ``1d6400``.

**Note:** This setting takes effect in **shutter** or **manual** exposure_mode_ only.

.. <html>

.. _exposure_mode: /camadapter/api/exposure_mode/

.. </html>

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/shutter/1d40

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
