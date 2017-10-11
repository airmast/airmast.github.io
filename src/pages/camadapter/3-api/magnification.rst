magnification
=============

Set magnification
-----------------

.. class:: request-table-3

+--------------+-----------------------------------------+-------------+
| Request Type |                   URL                   | DJI Zenmuse |
+==============+=========================================+=============+
| POST         | **/api/v1/magnification/**\ ``<value>`` | XT          |
+--------------+-----------------------------------------+-------------+

``<value>`` is a floating point value of magnification (from 1 to 4).

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/magnification/1.5

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
