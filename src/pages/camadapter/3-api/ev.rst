ev
==

Set exposure value (EV)
-----------------------

.. class:: request-table-3

+--------------+------------------------------+-------------+
| Request Type |             URL              | DJI Zenmuse |
+==============+==============================+=============+
| POST         | **/api/v1/ev/**\ ``<value>`` | X3, Z3      |
+--------------+------------------------------+-------------+

``<value>`` is the floating point value of exposure (from −3.0 to +3.0).

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/ev/1.2

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
