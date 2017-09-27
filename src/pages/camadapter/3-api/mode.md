mode
====

Set camera mode
---------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|----------------------
POST | **/api/v1/mode/[`<value>`](#-value-)** | Any

### `<value>`

Option | Description
-------|------------
**photo** | Photo mode
**playback** | Playback mode
**video** | Video mode

### Sample Request

```http
POST http://localhost:8123/api/v1/mode/photo
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
