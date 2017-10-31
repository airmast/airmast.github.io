ffc_mode
========

Set flat-field correction (FFC) mode
------------------------------------

.. class:: request-table-3

+--------------+------------------------------------------+-------------+
| Request Type |                   URL                    | DJI Zenmuse |
+==============+==========================================+=============+
| POST         | **/api/v1/ffc_mode/**\<ffc_mode_value_\> | XT          |
+--------------+------------------------------------------+-------------+

ffc_mode_value
~~~~~~~~~~~~~~

.. class:: option-table-2

+------------+------------------------+
|   Option   |      Description       |
+============+========================+
| **auto**   | Set FFC mode to auto   |
+------------+------------------------+
| **manual** | Set FFC mode to manual |
+------------+------------------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/ffc_mode/auto

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
