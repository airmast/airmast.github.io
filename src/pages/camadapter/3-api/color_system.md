color_system
============

Set NTSC/PAL color system
-------------------------

Request Type | URL
-------------|----
POST | **/api/v1/color_system/[`<value>`](#-value-)**

### `<value>`

Option | Supported DJI Zenmuse | Description
-------|-----------------------|------------
**ntsc** | XT | Set color system to NTSC
**pal** | XT | Set color system to PAL

### Sample Request

```http
POST http://localhost:8123/api/v1/color_system/pal
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
