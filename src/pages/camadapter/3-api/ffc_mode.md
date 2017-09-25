ffc_mode
=====

Set flat-field correction mode
------------------------------

Request Type | URL
-------------|----
POST | **/api/v1/ffc_mode/[`<mode>`](#-mode-)**


### `<mode>`

Option | Supported DJI Zenmuse | Description
-------|-----------------------|------------
**auto**    | XT | Set ffc mode to auto
**manual**  | XT | Set ffc mode to manual

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

