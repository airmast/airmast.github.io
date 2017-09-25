scene_sso
=====

Set smart scene optimization
------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|------------------------
POST | **/api/v1/scene_sso/`<sso>`** | XT

`<sso>` &mdash; SSO is a percent from 0 to 100

### Sample Request

```http
POST http://localhost:8123/api/v1/scene_sso/75
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

