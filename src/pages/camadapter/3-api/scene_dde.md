scene_dde
=====

Set digital detail enhancement
------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
POST | **/api/v1/scene_dde/`<dde>`** | XT

`<dde>` &mdash; DDE is a value from -20 to 100,
negative values soften the image and positive values
sharpen it

### Sample Request

```http
POST http://localhost:8123/api/v1/scene_dde/33
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

