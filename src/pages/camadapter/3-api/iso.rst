iso
===

Set ISO
-------

.. class:: request-table-3

+--------------+-------------------------------+-------------+
| Request Type |              URL              | DJI Zenmuse |
+==============+===============================+=============+
| POST         | **/api/v1/iso/**\ ``<value>`` | X3, Z3      |
+--------------+-------------------------------+-------------+

``<value>`` is an integer value of ISO. Possible values: ``100``,
``200``, ``400``, ``800``, ``1600``, ``3200``.

**Note:** This setting takes effect in **manual** exposure_mode_ only.

.. <html>

.. _exposure_mode: /camadapter/api/exposure_mode/

.. </html>

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/iso/800

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
