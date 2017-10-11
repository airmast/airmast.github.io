zoom
====

Zoom
----

.. class:: request-table-3

+--------------+-----------------------------------+-------------+
| Request Type |                URL                | DJI Zenmuse |
+==============+===================================+=============+
| POST         | **/api/v1/zoom/**\<zoom_action_\> | Z3, Z30     |
+--------------+-----------------------------------+-------------+

zoom_action
~~~~~~~~~~~

+----------+-----------------------+
|  Option  |      Description      |
+==========+=======================+
| **in**   | Start zoom in (Tele)  |
+----------+-----------------------+
| **out**  | Start zoom out (Wide) |
+----------+-----------------------+
| **stop** | Stop zooming          |
+----------+-----------------------+

**Note**: Zoom in or out command need to be stopped by stop command.

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/zoom/stop

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
