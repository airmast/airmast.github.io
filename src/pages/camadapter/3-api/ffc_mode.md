ffc_mode
========

Set flat-field correction mode
------------------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|----------------------
POST | **/api/v1/ffc_mode/[`<value>`](#-value-)** | XT


### `<value>`

Option | Description
-------|------------
**auto**   | Set FFC mode to auto
**manual** | Set FFC mode to manual

### Sample Request

```http
POST http://localhost:8123/api/v1/ffc_mode/auto
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
