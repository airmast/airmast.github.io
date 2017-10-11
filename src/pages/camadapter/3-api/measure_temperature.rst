measure_temperature
===================

Enable or disable temperature measurement
-----------------------------------------

.. class:: request-table-3

+--------------+-----------------------------------------------------+-------------+
| Request Type |                         URL                         | DJI Zenmuse |
+==============+=====================================================+=============+
| POST         | **/api/v1/measure_temperature/**\<measure_action_\> | XT          |
+--------------+-----------------------------------------------------+-------------+

measure_action
~~~~~~~~~~~~~~

.. class:: option-table-2

+---------+---------------------------------+
| Option  |           Description           |
+=========+=================================+
| **off** | Disable temperature measurement |
+---------+---------------------------------+
| **on**  | Enable temperature measurement  |
+---------+---------------------------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/measure_temperature/on

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
