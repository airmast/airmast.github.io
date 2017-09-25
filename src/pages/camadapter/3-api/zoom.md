zoom
=====

Zoom
------------------

Request Type | URL 
-------------|-----
POST | **/api/v1/zoom/[`<action>`](#-action-)**

### `<action>`

Option  | Supported DJI Zenmuse | Description
--------|-----------------------|--------------
**in**    | Any | Zoom in (Tele)
**out**   | Any | Zoom out (Wide)
**stop**  | Any | Stop zooming

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

