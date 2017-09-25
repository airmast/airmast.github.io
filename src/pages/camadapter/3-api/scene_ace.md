scene_ace
=====

Set active contrast enhancement
------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
POST | **/api/v1/scene_ace/`<ace>`** | XT

`<ace>` &mdash; integer from -8 to +8

### Sample Request

```http
POST http://localhost:8123/api/v1/scene_ace/2
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

