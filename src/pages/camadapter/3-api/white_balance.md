white_balance
=====

Set white balance mode
------------------

Request Type | URL 
-------------|-----
POST | **/api/v1/white_balance/[`<mode>`](#-mode-)**

### `<mode>`

Option | Supported DJI Zenmuse | Description
-------|-----------------------|--------------------
**auto**  | X3, X4S, X5, X5R, X5S, Z3, Z30 | Auto mode
**sunny** | X3, X4S, X5, X5R, X5S, Z3, Z30 | Sunny mode
**cloudy** | X3, X4S, X5, X5R, X5S, Z3, Z30 | Cloudy mode
**insandescent** | X3, X4S, X5, X5R, X5S, Z3, Z30 | Insandescent mode
**fluorescent** | X3, X4S, X5, X5R, X5S, Z3, Z30 | Fluorescent mode
**custom** | X3, X4S, X5, X5R, X5S, Z3, Z30 | Custom mode

### Sample Request

```http
POST http://localhost:8123/api/v1/white_balance/auto
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

