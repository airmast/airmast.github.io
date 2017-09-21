color_system
============

Set NTSC/PAL color system
-------------------------

Type | URL | Supported DJI Zenmuse
-----|-----|-----------------------
POST |  /api/v1/color_system/`<value>` | XT

### `<value>` (XT)

Option | Description
-------|------------
ntsc   | Set color system to **NTSC**
pal    | Set color system to **PAL**

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
