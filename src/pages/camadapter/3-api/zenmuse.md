zenmuse
=====

Set used Zenmuse camera
------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|---------------------------
POST | **/api/v1/zenmuse/[`<model>`](#-model-)** | Any

### `<model>`

Option  | Description
--------|--------------------
**x3**  | X3 camera
**x4s** | X4S camera
**x5**  | X5 camera
**x5r** | X5R camera
**x5s** | X5S camera
**xt**  | XT camera
**z3**  | Z3 camera
**z30** | Z30 camera
**detect** | Auto detect camera type

### Sample Request

```http
POST http://localhost:8123/api/v1/zenmuse/x3
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

