scene
=====

Set camera's scene mode
-----------------------

.. class:: request-table-3

+--------------+------------------------------------+-------------+
| Request Type |                URL                 | DJI Zenmuse |
+==============+====================================+=============+
| POST         | **/api/v1/scene/**\<scene_value_\> | XT          |
+--------------+------------------------------------+-------------+

scene_value
~~~~~~~~~~~

.. class:: option-table-2

+-------------+--------------------+
|   Option    |    Description     |
+=============+====================+
| **default** | Default scene mode |
+-------------+--------------------+
| **indoor**  | Indoor scene mode  |
+-------------+--------------------+
| **linear**  | Linear scene mode  |
+-------------+--------------------+
| **manual**  | Manual scene mode  |
+-------------+--------------------+
| **outdoor** | Outdoor scene mode |
+-------------+--------------------+
| **seasky**  | Seasky scene mode  |
+-------------+--------------------+
| **user1**   | User1 scene mode   |
+-------------+--------------------+
| **user2**   | User2 scene mode   |
+-------------+--------------------+
| **user3**   | User3 scene mode   |
+-------------+--------------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/scene/linear

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
