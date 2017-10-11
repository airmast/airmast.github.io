shooting
========

Start recording video (or photo) to card
----------------------------------------

.. class:: request-table-2

+--------------+-------------------------------------------+
| Request Type |                    URL                    |
+==============+===========================================+
| POST         | **/api/v1/shooting/**\<shooting_action_\> |
+--------------+-------------------------------------------+

shooting_action
~~~~~~~~~~~~~~~

.. class:: option-table-3

+-----------+-------------+-----------------+
|  Option   | DJI Zenmuse |   Description   |
+===========+=============+=================+
| **photo** | Any         | Make a photo    |
+-----------+-------------+-----------------+
| **start** | Any         | Start recording |
+-----------+-------------+-----------------+
| **stop**  | Any         | Stop recording  |
+-----------+-------------+-----------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    POST http://localhost:8123/api/v1/shooting/photo

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "success": true
    }

Get current recording status
----------------------------

.. class:: request-table-3

+--------------+----------------------+-------------+
| Request Type |         URL          | DJI Zenmuse |
+==============+======================+=============+
| GET          | **/api/v1/shooting** | Any         |
+--------------+----------------------+-------------+

JSON Response
~~~~~~~~~~~~~

.. class:: parameter-table-3

+-----------------------+--------+----------------------------------------------------------------+
|       Parameter       |  Type  |                          Description                           |
+=======================+========+================================================================+
| **video**             | string | Video recording status.                                        |
|                       |        |                                                                |
|                       |        | Possible values: ``on``, ``off``, ``starting``, ``stopping``   |
+-----------------------+--------+----------------------------------------------------------------+
| **photo**             | string | Photo recording status.                                        |
|                       |        |                                                                |
|                       |        | Possible values: ``storing``, ``idle``                         |
+-----------------------+--------+----------------------------------------------------------------+
| **duration_seconds**  | number | Duration since recording start expressed in seconds            |
+-----------------------+--------+----------------------------------------------------------------+
| **duration**          | string | Formated time since recording start in **hh:mm:ss** format     |
+-----------------------+--------+----------------------------------------------------------------+
| **remaining_seconds** | number | Remaining time till memory card is full expressed in seconds   |
+-----------------------+--------+----------------------------------------------------------------+
| **remaining_time**    | string | Remaining time till memory card is full in **hh:mm:ss** format |
+-----------------------+--------+----------------------------------------------------------------+
| **remaining_space**   | number | Remaining space on the memory card (MiB)                       |
+-----------------------+--------+----------------------------------------------------------------+

Sample Request
~~~~~~~~~~~~~~

.. code:: http

    GET http://localhost:8123/api/v1/shooting

Sample Response
~~~~~~~~~~~~~~~

Status code: **200**

.. code:: javascript

    {
      "video": "starting",
      "photo": "idle",
      "duration": "00:00:05",
      "duration_seconds": 5,
      "remaining_seconds": 1839,
      "remaining_space": 13153,
      "remaining_time": "00:30:39",
      "success": true
    }
