imu_yaw (deprecated)
====================

IMU yaw angle
-------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
POST | **/api/v1/imu_yaw/`<value>`** | Any

`<value>` is a floating point value of yaw angle expressed in radian (from -π to +π).

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
