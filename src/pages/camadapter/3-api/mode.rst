mode
====

Set camera mode
---------------

.. class:: request-table-3

+--------------+----------------------------------+-------------+
| Request Type |               URL                | DJI Zenmuse |
+==============+==================================+=============+
| POST         | **/api/v1/mode/**\<mode_value_\> | Any         |
+--------------+----------------------------------+-------------+

mode_value
~~~~~~~~~~

.. class:: option-table-2

+--------------+---------------+
|    Option    |  Description  |
+==============+===============+
| **photo**    | Photo mode    |
+--------------+---------------+
| **playback** | Playback mode |
+--------------+---------------+
| **video**    | Video mode    |
+--------------+---------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/mode/photo

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
