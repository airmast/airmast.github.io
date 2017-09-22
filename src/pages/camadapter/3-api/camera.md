camera
======

Overall camera control
----------------------

Request Type | URL
-------------|----
POST | **/api/v1/camera/[`<value>`](#-value-)**

### `<value>`

Option | Supported DJI Zenmuse | Description
-------|-------------------|------------
**reset** | Any | Reset Zenmuse camera settings
**trigger_ffc** | XT | Trigger flat-field correction manually

### Sample Request

```http
POST http://localhost:8123/api/v1/camera/reset
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

Camera status
-------------

Return current values of camera settings.

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
GET |  **/api/v1/camera** | X3, Z3, XT

### JSON Response

Parameter | Type | Supported DJI Zenmuse | Description
----------|------|------------
**сolor** | string | X3, XT, Z3 | See [**color** API description](/camadapter/api/color/)
**color_system** | string | X3, XT, Z3 | See [**color_system** API description](/camadapter/api/color_system/)
**color_temperature** | number | X3, Z3 | See [**color_temperature** API description](/camadapter/api/color_temperature/)
**digital_zoom** | number | Z3 | Current value of digital zoom
**exposure_mode** | string | X3, Z3 | See [**exposure_mode** API description](/camadapter/api/exposure_mode/)
**ev** | number | X3, Z3 | See [**ev** API description](/camadapter/api/ev/)
**ffc_mode** | string | XT | See [**ffc_mode** API description](/camadapter/api/ffc_mode/)
**image_format** | string | X3, XT, Z3 | See [**image_format** API description](/camadapter/api/image_format/)
**iso** | number | X3, Z3 | See [**iso** API description](/camadapter/api/iso/)
**isotherm** | string | XT | See [**isotherm** API description](/camadapter/api/isotherm/)
**isotherm_lower** | number | XT | See [**isotherm_lower** API description](/camadapter/api/isotherm_lower/)
**isotherm_units** | string | XT | See [**isotherm_units** API description](/camadapter/api/isotherm_units/)
**isotherm_middle** | number | XT | See [**isotherm_middle** API description](/camadapter/api/isotherm_middle/)
**isotherm_upper** | number | XT | See [**isotherm_upper** API description](/camadapter/api/isotherm_upper/)
**gain_mode** | string | XT | See [**gain_mode** API description](/camadapter/api/gain_mode/)
**magnification** | number | XT | See [**magnification** API description](/camadapter/api/magnification/)
**measure_temperature** | string | XT | See [**measure_temperature** API description](/camadapter/api/measure_temperature/)
**mode** | string | X3, XT, Z3 | See [**mode** API description](/camadapter/api/mode/)
**roi** | string | XT | See [**roi** API description](/camadapter/api/roi/)
**scene** | string | XT | See [**scene** API description](/camadapter/api/scene/)
**scene_ace** | number | XT | See [**scene_ace** API description](/camadapter/api/scene_ace/)
**scene_brightness** | number | XT | See [**scene_brightness** API description](/camadapter/api/scene_brightness/)
**scene_contrast** | number | XT | See [**scene_contrast** API description](/camadapter/api/scene_contrast/)
**scene_dde** | number | XT | See [**scene_dde** API description](/camadapter/api/scene_dde/)
**scene_sso** | number | XT | See [**scene_sso** API description](/camadapter/api/scene_sso/)
**shutter** | string | X3, Z3 | See [**shutter** API description](/camadapter/api/shutter/)
**temperature** | number | XT | See [**temperature** API description](/camadapter/api/temperature/)
**video_format** | string | X3, Z3 | See [**video_format** API description](/camadapter/api/video_format/)
**video_size** | string | X3, Z3 | See [**video_size** API description](/camadapter/api/video_size/)
**white_balance** | string | X3, Z3 | See [**white_balance** API description](/camadapter/api/white_balance/)

### Sample Request

```http
GET http://localhost:8123/api/v1/camera
```

### Sample Response

Status code: **200**

```javascript
/* DJI Zenmuse XT */
{
    "color": "none",
    "color_system": "ntsc",
    "image_format": "jpeg",
    "mode": "video",
    "ffc_mode": "auto",
    "isotherm": "on",
    "isotherm_units": "percentage",
    "isotherm_lower": 90,
    "isotherm_middle": 95,
    "isotherm_upper": 100,
    "gain_mode": "auto",
    "magnification": 2.0,
    "measure_temperature": "on",
    "roi": "full",
    "scene": "default",
    "scene_ace": 1,
    "scene_brightness": 5000,
    "scene_contrast": 111,
    "scene_dde": 33,
    "scene_sso": 75,
    "temperature": 25
}
```
