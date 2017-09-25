isotherm_upper
=====

Set isotherm upper value
-----------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
POST | **/api/v1/isotherm_upper/`<value>`** | XT

`<value>` &mdash; integer value of isotherm (from -40 to 1000)

**Note:** This setting takes effect only if [isotherm](/camadapter/api/isotherm/) is enabled.

### Sample Request

```http
POST http://localhost:8123/api/v1/isotherm_upper/100
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

