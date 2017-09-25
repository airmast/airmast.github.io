measure_temperature
=====

Enable or disable temperature measurement
------------------

Request Type | URL 
-------------|-----
POST | **/api/v1/measure_temperature/[`<enable>`](#-enable-)**


### `<enable>`

Option | Supported DJI Zenmuse | Description
-------|-----------------------|------------
**on**    | XT | Enable temperature measurement
**off** | XT | Disable temperature measurement

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

