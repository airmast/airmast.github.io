ev
==

Set exposure value
------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
POST | **/api/v1/exposure/`<value>`** | X3, Z3

`<value>` is the floating point value of exposure (from -3 to +3).

**Note:** This setting takes effect in appropriate [exposure mode](/camadapter/api/exposure_mode/) only.

### Sample Request

```http
POST http://localhost:8123/api/v1/ev/1.2
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
