scene_sso
=========

Set smart scene optimization (SSO)
----------------------------------

.. class:: request-table-3

+--------------+-------------------------------------+-------------+
| Request Type |                 URL                 | DJI Zenmuse |
+==============+=====================================+=============+
| POST         | **/api/v1/scene_sso/**\ ``<value>`` | XT          |
+--------------+-------------------------------------+-------------+

``<value>`` is an integer value of SSO expressed in percent (from 0 to
100).

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/scene_sso/75

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }
