roi
=====

Set camera's region of interest
------------------

Request Type | URL 
-------------|-----
POST | **/api/v1/roi/[`<roi>`](#-roi-)**

### `<roi>`

Option | Supported DJI Zenmuse | Description
-------|-----------------------|------------
**full**    | XT | Full
**skyex33** | XT | Sky excluded 33%
**skyex50** | XT | Sky excluded 50%

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

