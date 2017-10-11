white_balance
=============

Set white balance mode
----------------------

.. class:: request-table-2

+--------------+----------------------------------------------------+
| Request Type |                        URL                         |
+==============+====================================================+
| POST         | **/api/v1/white_balance/**\<white_balance_value_\> |
+--------------+----------------------------------------------------+

white_balance_value
~~~~~~~~~~~~~~~~~~~

.. class:: option-table-3

+------------------+-------------+-------------------+
|      Option      | DJI Zenmuse |    Description    |
+==================+=============+===================+
| **auto**         | X3, Z3, Z30 | Auto mode         |
+------------------+-------------+-------------------+
| **sunny**        | X3, Z3, Z30 | Sunny mode        |
+------------------+-------------+-------------------+
| **cloudy**       | X3, Z3, Z30 | Cloudy mode       |
+------------------+-------------+-------------------+
| **insandescent** | X3, Z3, Z30 | Insandescent mode |
+------------------+-------------+-------------------+
| **fluorescent**  | X3, Z3      | Fluorescent mode  |
+------------------+-------------+-------------------+
| **custom**       | X3, Z3      | Custom mode       |
+------------------+-------------+-------------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/white_balance/auto

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
