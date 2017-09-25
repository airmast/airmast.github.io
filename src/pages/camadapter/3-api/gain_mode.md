gain_mode
=====

Set gain mode
-------------

Request Type | URL
-------------|----
POST | **/api/v1/gain_mode/[`<mode>`](#-mode-)**


### `<mode>`

Option | Supported DJI Zenmuse | Description
-------|-----------------------|------------
**auto**    | XT | Set gain mode to auto
**low** | XT | Set gain mode to low
**high**  | XT | Set gain mode to high

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

