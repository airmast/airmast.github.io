scene_contrast
=====

Set scene contrast
------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|------------------------
POST | **/api/v1/scene_contrast/`<contrast>`** | XT

`<contrast>` &mdash; contrast value from 0 to 255

### Sample Request

```http
POST http://localhost:8123/api/v1/scene_contrast/100
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

