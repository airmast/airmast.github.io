API
=====

* Command: POST request with empty data (data sent with POST request does not matter)
* Info: GET request
* Receiving data format: JSON
* HTTP Port: 8123
* Path: /api/v1/&lt;parameter&gt;

For example, in order to set photo mode (let us assume localhost as server address) we need send POST request to:

http://127.0.0.1:8123/api/v1/mode/photo

JSON-response attributes:

  * `success: Boolean` — true when no error, false elsewhere
  * *(for GET requests only)* additional requested data (specified for particular parameters below)

Available parameters are listed below (in alphabetical order).
