imu_pitch (deprecated)
======================

IMU pitch angle
---------------

*Angles are used for gimbal positioning in some modes*

Request Type | URL | Supported DJI Zenmuse
-------------|-----|------------------------
POST | **/api/v1/imu_pitch/`<value>`** | Any

`<value>` is a floating point value of pitch angle expressed in radian (from -π to +π).

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
