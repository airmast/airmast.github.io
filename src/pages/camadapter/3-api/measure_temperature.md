measure_temperature
===================

Enable or disable temperature measurement
-----------------------------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|----------------------
POST | **/api/v1/measure_temperature/[`<value>`](#-value-)** | XT

### `<value>`

Option | Description
-------|------------
**on** | Enable temperature measurement
**off** | Disable temperature measurement

### Sample Request

```http
POST http://localhost:8123/api/v1/measure_temperature/on
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
