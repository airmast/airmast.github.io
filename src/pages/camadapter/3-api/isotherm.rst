isotherm
========

Enable or disable isotherm
--------------------------

.. class:: request-table-3

+--------------+-------------------------------------------+-------------+
| Request Type |                    URL                    | DJI Zenmuse |
+==============+===========================================+=============+
| POST         | **/api/v1/isotherm/**\<isotherm_action_\> | XT          |
+--------------+-------------------------------------------+-------------+

isotherm_action
~~~~~~~~~~~~~~~

.. class:: option-table-2

+---------+------------------+
| Option  |   Description    |
+=========+==================+
| **off** | Disable isotherm |
+---------+------------------+
| **on**  | Enable isotherm  |
+---------+------------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/isotherm/on

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
