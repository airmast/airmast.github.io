gimbal_mode
=====

Gimbal mode
-----------------

Request Type | URL 
-------------|-----
POST | **/api/v1/gimbal_mode/[`<mode>`](#-mode-)**


### `<mode>`

Option | Supported DJI Zenmuse | Description
-------|-----------------------|------------
**follow** | Any | Follow (look at copter flight direction by yaw)
**fpv**   | Any | FPV (nearly the same thing as follow)
**free**  | Any | Free (keep direction by yaw relatively to the ground)

### Sample Request

```http
POST http://localhost:8123/api/v1/gimbal_mode/follow
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

