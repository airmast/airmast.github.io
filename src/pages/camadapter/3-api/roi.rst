roi
===

Set camera's region of interest (ROI)
-------------------------------------

.. class:: request-table-3

+--------------+--------------------------------+-------------+
| Request Type |              URL               | DJI Zenmuse |
+==============+================================+=============+
| POST         | **/api/v1/roi/**\<roi_value_\> | XT          |
+--------------+--------------------------------+-------------+

roi_value
~~~~~~~~~

.. class:: option-table-2

+-------------+------------------+
|   Option    |   Description    |
+=============+==================+
| **full**    | Full             |
+-------------+------------------+
| **skyex33** | Sky excluded 33% |
+-------------+------------------+
| **skyex50** | Sky excluded 50% |
+-------------+------------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/roi/full

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
