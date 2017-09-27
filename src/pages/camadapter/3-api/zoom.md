zoom
=====

Zoom
------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|----------------------
POST | **/api/v1/zoom/[`<value>`](#-value-)** | Z3, Z30

### `<value>`

Option  | Description
--------|------------
**in**  | Start zoom in (Tele)
**out** | Start zoom out (Wide)
**stop** | Stop zooming

**Note**: Zoom in or out command need to be stopped by stop command.

### Sample Request

```http
POST http://localhost:8123/api/v1/zoom/stop
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
