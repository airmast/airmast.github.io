isotherm_units
=====

Set isotherm units
-----------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
POST | **/api/v1/isotherm_units/[`<units>`](#-units-)** | XT

**Note:** This setting takes effect only if [isotherm](/camadapter/api/isotherm/) is enabled.

### `<units>`

Option | Supported DJI Zenmuse | Description
-------|-----------------------|------------
**celsius**    | XT | Use celsius degrees
**percentage** | XT | Use percentage

### Sample Request

```http
POST http://localhost:8123/api/v1/isotherm_units/celsius
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

