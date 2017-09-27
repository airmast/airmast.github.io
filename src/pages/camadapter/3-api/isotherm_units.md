isotherm_units
==============

Set isotherm units
------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
POST | **/api/v1/isotherm_units/[`<value>`](#-value-)** | XT

**Note:** This setting takes effect only if [isotherm](/camadapter/api/isotherm/) is enabled.

### `<value>`

Option | Description
-------|------------
**celsius** | Use celsius degrees
**percentage** | Use percentage

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
