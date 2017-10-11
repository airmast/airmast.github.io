video_format
=============

Set video format
----------------

.. class:: request-table-2

+--------------+--------------------------------------------------+
| Request Type |                       URL                        |
+==============+==================================================+
| POST         | **/api/v1/video_format/**\<video_format_value_\> |
+--------------+--------------------------------------------------+

video_format_value
~~~~~~~~~~~~~~~~~~

.. class:: option-table-3

+---------+-------------+--------------+
| Option  | DJI Zenmuse | Description  |
+=========+=============+==============+
| **mov** | X3, Z3, Z30 | MOV format   |
+---------+-------------+--------------+
| **mp4** | X3, Z3, Z30 | MPEG4 format |
+---------+-------------+--------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/video_format/mov

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
