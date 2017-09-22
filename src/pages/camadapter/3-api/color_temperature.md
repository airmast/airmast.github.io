color_temperature
=================

Set color temperature
---------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
POST | **/api/v1/color_temperature/`<value>`** | X3, Z3

`<value>` is an integer value of color temperature expressed in kelvin.

### Sample Request

```http
POST http://localhost:8123/api/v1/color_temperature/2700
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
