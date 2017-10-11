aperture
========

Set aperture
------------

.. class:: request-table-3

+--------------+------------------------------------+-------------+
| Request Type |                URL                 | DJI Zenmuse |
+==============+====================================+=============+
| POST         | **/api/v1/aperture/**\ ``<value>`` | Z30         |
+--------------+------------------------------------+-------------+

``<value>`` is a floating point value of aperture (from 1.6 to 14).

**Note:** This setting takes effect in **aperture** exposure_mode_ only.

.. <html>

.. _exposure_mode: /camadapter/api/exposure_mode/

.. </html>

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/aperture/6.8

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
