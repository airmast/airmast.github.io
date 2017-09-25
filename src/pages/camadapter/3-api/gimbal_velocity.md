gimbal_velocity
=====

Gimbal positioning
-----------------

Request Type | URL 
-------------|-----
POST | **/api/v1/gimbal_velocity/`<pan>`,`<tilt>`**

### Parameters

Parameter | Type    | Description
----------|---------|---------------------
`<pan>`   | Integer | Turn gimbal by pan
`<tilt>`  | Integer | Turn gimbal by tilt

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



