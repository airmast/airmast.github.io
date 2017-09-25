isotherm
=====

Enable or disable isotherm
-----------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
POST | **/api/v1/isotherm/`<enable>`** | XT

`<enable>` &mdash; `on` or `off` to enable or disable isotherm

### Sample Request

```http
POST http://localhost:8123/api/v1/isotherm/on
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

