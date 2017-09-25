imu_yaw
=====
IMU yaw angle
-----------------
(used for gimbal positioning in some modes)

Request Type | URL 
-------------|-----
POST | **/api/v1/imu_yaw/`<yaw>`**


`<yaw>` &mdash; float point yaw angle value (rad) (from -pi to +pi)

### Sample Request

```http
POST http://localhost:8123/api/v1/imu_yaw/0.5
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

