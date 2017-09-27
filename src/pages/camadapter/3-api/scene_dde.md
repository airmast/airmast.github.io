scene_dde
=========

Set digital detail enhancement (DDE)
------------------------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
POST | **/api/v1/scene_dde/`<value>`** | XT

`<value>` is a integer value of DDE (from -20 to 100). Negative values soften the image and positive values sharpen it.

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
