magnification
=====

Set magnification
------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
POST | **/api/v1/magnification/`<x>`** | XT

`<x>` &mdash; is a floating point value of how many times to magnify (from 1 to 4).

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

