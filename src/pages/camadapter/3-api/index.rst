API Reference
=============

One may control CamAdapter and get info from it using HTTP requests. It
is implemented by sending POST or GET request to the specific URL.
Response is a JSON message with status information and requested data.

Command
-------

.. table::
   :widths: 15 40 15 25 25

   +------+-------------------------------------+------+--------------+---------------+
   | Type |                Path                 | Port | Request Data | Response Data |
   +======+=====================================+======+==============+===============+
   | POST | /api/v1/``<parameter>``/``<value>`` | 8123 | None         | JSON          |
   +------+-------------------------------------+------+--------------+---------------+

Sample Command Request
~~~~~~~~~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/mode/photo

Sample Command Response
~~~~~~~~~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }

Info
----

.. table::
   :widths: 15 40 40 25

   +------+-------------------------+------+---------------+
   | Type |          Path           | Port | Response Data |
   +======+=========================+======+===============+
   | GET  | /api/v1/``<parameter>`` | 8123 | JSON          |
   +------+-------------------------+------+---------------+

Sample Info Request
~~~~~~~~~~~~~~~~~~~

.. code:: http

    GET http://localhost:8123/api/v1/app

Sample Info Response
~~~~~~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "build_date": "24.01.2017",
      "safe_sound": 89,
      "success": true,
      "uptime": "2 d, 03:35:08",
      "version": "v0.1.0 build 41"
      "video_connections": 10,
      "video_amount": 1234,
      "video_rate": 123,
      "canbus_tx": 500,
      "canbus_rx": 600,
      "zenmuse": "x3",
    }

Available parameters are listed below (in alphabetical order).
