gimbal_velocity
===============

Gimbal positioning
------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|----------------------
POST | **/api/v1/gimbal_velocity/`<pan>`,`<tilt>`** | Any

### Parameters

Parameter | Type    | Description
----------|---------|---------------------
`<pan>`   | number | Gimbal pan velocity, negative to left, positive to right
`<tilt>`  | number | Gimbal tilt velocity, negative up, positive down

### Sample Request

```http
POST http://localhost:8123/api/v1/gimbal_velocity/-1024,128
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
