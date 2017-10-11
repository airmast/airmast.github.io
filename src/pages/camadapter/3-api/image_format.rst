image_format
============

Set image format
----------------

.. class:: request-table-2

+--------------+--------------------------------------------------+
| Request Type |                       URL                        |
+==============+==================================================+
| POST         | **/api/v1/image_format/**\<image_format_value_\> |
+--------------+--------------------------------------------------+

image_format_value
~~~~~~~~~~~~~~~~~~

.. class:: option-table-3

+-----------+-------------+--------------------------+
|  Option   | DJI Zenmuse |       Description        |
+===========+=============+==========================+
| **rjpeg** | XT          | Radiometric JPEG image   |
+-----------+-------------+--------------------------+
| **tiff**  | XT          | Tiff 14 bit image format |
+-----------+-------------+--------------------------+
| **jpeg**  | XT          | JPEG image format        |
+-----------+-------------+--------------------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/image_format/rjpeg

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
