imu_all
=====

Set IMU roll, pitch and yaw angles
-----------------
Angles are used for gimbal positioning in some modes

Request Type | URL 
-------------|-----
POST | **/api/v1/imu_all/`<roll>`:`<pitch>`:`<yaw>`**


### Parameters

Parameter | Type | Description
----------|-----------------------|------------
`<roll>`   | Float | roll angle value in rads (from -pi to +pi)
`<pitch>`  | Float | pitch angle value in rads (from -pi to +pi)
`<yaw>`    | Float | yaw angle value in rads (from -pi to +pi)

### Sample Request

```http
POST http://localhost:8123/api/v1/imu_all/0.5:-0.1:-1.57
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

