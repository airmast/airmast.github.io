scene_brightness
=====

Set scene brightness
------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|------------------------
POST | **/api/v1/scene_brightness/`<brightness>`** | XT

`<brightness>` &mdash; integer from 0 to 16383

### Sample Request

```http
POST http://localhost:8123/api/v1/scene_brightness/7000
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

