iso
=====

ISO setting
-----------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
POST | **/api/v1/iso/`<iso>`** | X3, Z3

`<iso>` &mdash; `100`, `200`, `400`, `800`, `1600` or `3200` integer value of ISO

### Sample Request

```http
POST http://localhost:8123/api/v1/iso/800
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

