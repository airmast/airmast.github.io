imu_roll (deprecated)
=====================

IMU roll angle
--------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|------------------------
POST | **/api/v1/imu_roll/`<value>`** | Any

`<value>` is a floating point value of roll angle expressed in radian (from -π to +π).

### Sample Request

```http
POST http://localhost:8123/api/v1/imu_roll/0.5
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
