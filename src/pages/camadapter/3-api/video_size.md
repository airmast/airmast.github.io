video_size
=====

Set video resolution and FPS
------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|------------------------
POST | **/api/v1/video_size/`<resolution>`p`<fps>`** | X3

### Parameters

Option | Description
-------|-----------------
**resolution** | "4096x2160", "3840x2160", "2704x1520", "1920x1080", "1280x720"
**fps** | "24", "25", "30", "48", "50", "60", "120"

### Sample Request

```http
POST http://localhost:8123/api/v1/video_size/1920x1080p30
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

