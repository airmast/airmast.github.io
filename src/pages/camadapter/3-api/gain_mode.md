gain_mode
=========

Set gain mode
-------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|----------------------
POST | **/api/v1/gain_mode/[`<value>`](#-value-)** | XT


### `<value>`

Option | Description
-------|------------
**auto** | Set gain mode to auto
**low** | Set gain mode to low
**high** | Set gain mode to high

### Sample Request

```http
POST http://localhost:8123/api/v1/gain_mode/auto
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
