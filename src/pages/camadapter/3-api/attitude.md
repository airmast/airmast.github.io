attitude
========

Set attitude angles (roll, pitch and yaw)
-----------------------------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------------
POST | **/api/v1/attitude/`<roll>`,`<pitch>`,`<yaw>`** | Any

### Parameters

Parameter | Type | Description
----------|-----------------------|------------
`<roll>`   | number | Roll angle value expressed in radian (from −π to +π)
`<pitch>`  | number | Pitch angle value expressed in radian (from -π to +π)
`<yaw>`    | number | Yaw angle value expressed in radian (from −π to +π)

### Sample Request

```http
POST http://localhost:8123/api/v1/attitude/0.5,-0.1,-1.57
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
