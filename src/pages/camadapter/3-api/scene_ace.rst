scene_ace
=========

Set active contrast enhancement (ACE)
-------------------------------------

.. class:: request-table-3

+--------------+-------------------------------------+-------------+
| Request Type |                 URL                 | DJI Zenmuse |
+==============+=====================================+=============+
| POST         | **/api/v1/scene_ace/**\ ``<value>`` | XT          |
+--------------+-------------------------------------+-------------+

``<value>`` is an integer value of ACE (from −8 to +8).

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/scene_ace/2

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
