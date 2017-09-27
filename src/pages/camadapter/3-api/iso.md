iso
=====

ISO setting
-----------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
POST | **/api/v1/iso/`<value>`** | X3, Z3

`<value>` is an integer value of ISO. Possible values: `100`, `200`, `400`, `800`, `1600`, `3200` 

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
