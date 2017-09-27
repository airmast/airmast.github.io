magnification
=============

Set magnification
-----------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
POST | **/api/v1/magnification/`<value>`** | XT

`<value>` is a floating point value of magnification (from 1 to 4).

### Sample Request

```http
POST http://localhost:8123/api/v1/magnification/1.5
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
