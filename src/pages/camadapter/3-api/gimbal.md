gimbal
=====

Execute gimbal centering (yaw only)
-----------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
POST | **/api/v1/gimbal/center** | Any

### Sample Request

```http
POST http://localhost:8123/api/v1/gimal/center
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

Get gimbal orientation
-----------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|----------------------
POST | **/api/v1/gimbal** | Any

### JSON Response

Parameter | Type | Description
----------|------|------------
**own_roll** | Float | roll angle referenced to frame(rad)
**own_pitch** | Float | pitch angle referenced to frame (rad)
**own_yaw** | Float | yaw angle referenced to frame (rad)
**stab_roll** | Float | roll angle referenced to ground (rad)
**stab_pitch** | Float | pitch angle referenced to ground (rad)
**stab_yaw** | Float | yaw angle referenced to ground (rad)

### Sample Request

```http
POST http://localhost:8123/api/v1/gimbal
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true,
    "own_roll": 0.255,
    "own_pitch": 1,
    "own_yaw": -1.0,
    "stab_roll": 0,
    "stab_pitch": 1.5707,
    "stab_yaw": 0
}
```

