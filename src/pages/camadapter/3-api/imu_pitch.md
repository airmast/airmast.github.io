imu_pitch
=====

IMU pitch angle
-----------------
*Angles are used for gimbal positioning in some modes*

Request Type | URL | Supported DJI Zenmuse
-------------|-----|------------------------
POST | **/api/v1/imu_pitch/`<pitch>`** | Any


`<pitch>` &mdash; float point pitch angle value (rad) (from -pi to +pi)

### Sample Request

```http
POST http://localhost:8123/api/v1/imu_pitch/0.5
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

