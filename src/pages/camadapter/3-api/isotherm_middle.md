isotherm_middle
=====

Set isotherm middle value
-----------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
POST | **/api/v1/isotherm_middle/`<value>`** | XT

`<value>` is an integer value of isotherm (from -40 to 1000).

**Note:** This setting takes effect only if [isotherm](/camadapter/api/isotherm/) is enabled.

### Sample Request

```http
POST http://localhost:8123/api/v1/isotherm_middle/95
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
