exposure_mode
=============

Set exposure mode
-----------------

Request Type | URL
-------------|----
POST | **/api/v1/exposure_mode/[`<value>`](#-value-)**


### `<value>`

Option | Supported DJI Zenmuse | Description
-------|-----------------------|------------
**auto**    | X3, Z3, Z30 | Set exposure mode to auto
**shutter** | X3, Z3, Z30 | Set exposure mode to shutter
**manual**  | X3, Z3, Z30 | Set exposure mode to manual

### Sample Request

```http
POST http://localhost:8123/api/v1/exposure_mode/auto
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
