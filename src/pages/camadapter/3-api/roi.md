roi
===

Set camera's region of interest
-------------------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|----------------------
POST | **/api/v1/roi/[`<value>`](#-value-)** | XT

### `<value>`

Option | Description
-------|------------
**full** | Full
**skyex33** | Sky excluded 33%
**skyex50** | Sky excluded 50%

### Sample Request

```http
POST http://localhost:8123/api/v1/roi/full
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
