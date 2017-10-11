gain_mode
=========

Set gain mode
-------------

.. class:: request-table-3

+--------------+--------------------------------------------+-------------+
| Request Type |                    URL                     | DJI Zenmuse |
+==============+============================================+=============+
| POST         | **/api/v1/gain_mode/**\<gain_mode_value_\> | XT          |
+--------------+--------------------------------------------+-------------+

gain_mode_value
~~~~~~~~~~~~~~~

.. class:: option-table-2

+----------+-----------------------+
|  Option  |      Description      |
+==========+=======================+
| **auto** | Set gain mode to auto |
+----------+-----------------------+
| **low**  | Set gain mode to low  |
+----------+-----------------------+
| **high** | Set gain mode to high |
+----------+-----------------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/gain_mode/auto

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
