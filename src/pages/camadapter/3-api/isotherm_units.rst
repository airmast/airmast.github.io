isotherm_units
==============

Set isotherm units
------------------

.. class:: request-table-3

+--------------+---------------------------------------------+-------------+
| Request Type |                     URL                     | DJI Zenmuse |
+==============+=============================================+=============+
| POST         | **/api/v1/isotherm_units/**\<units_value_\> | XT          |
+--------------+---------------------------------------------+-------------+

**Note:** This setting takes effect only if isotherm_ is enabled.

.. <html>

.. _isotherm: /camadapter/api/isotherm/

.. </html>

units_value
~~~~~~~~~~~

.. class:: option-table-2

+----------------+---------------------+
|     Option     |     Description     |
+================+=====================+
| **celsius**    | Use celsius degrees |
+----------------+---------------------+
| **percentage** | Use percentage      |
+----------------+---------------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/isotherm_units/celsius

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
