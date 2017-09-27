video_size
==========

Set video resolution and FPS
----------------------------

Request Type | URL
-------------|----
POST | **/api/v1/video_size/[`<value>`](#-value-)**

### `<value>`

Option | Supported DJI Zenmuse | Description
-------|-----------------------|------------
**1280x720p24** | X3 | HD (1280x720) @ 24 FPS
**1280x720p50** | X3 | HD (1280x720) @ 50 FPS
**1920x1080p24** | X3 | Full HD (1920x1080) @ 24 FPS
**1920x1080p25** | X3 | Full HD (1920x1080) @ 25 FPS
**1920x1080p48** | X3 | Full HD (1920x1080) @ 48 FPS
**1920x1080p50** | X3 | Full HD (1920x1080) @ 50 FPS
**1920x1080p120** | X3 | Full HD (1920x1080) @ 120 FPS
**2704x1520p24** | X3 | 2.7K (2704x1520) @ 24 FPS
**2704x1520p25** | X3 | 2.7K (2704x1520) @ 25 FPS
**3840x2160p24** | X3 | 4K (3840x2160) @ 24 FPS
**3840x2160p25** | X3 | 4K (3840x2160) @ 25 FPS
**3840x2160p30** | X3 | 4K (3840x2160) @ 30 FPS
**4096x2160p24** | X3 | Ultra HD (4096x2160) @ 24 FPS
**4096x2160p25** | X3 | Ultra HD (4096x2160) @ 35 FPS

### Sample Request

```http
POST http://localhost:8123/api/v1/video_size/1920x1080p24
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
