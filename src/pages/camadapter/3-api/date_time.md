date_time
=========

Set date and time
-----------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
POST | **/api/v1/date_time/`<value>`** | Any

`<value>` it the date and time in **yyyy-MM-ddThh:mm:ss** format (**T** is the date-time delimiter).

**Note:** Date and time need to be set before camera become able to take shots.

### Sample Request

```http
POST http://localhost:8123/api/v1/date_time/2017-08-05T11:30:15
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
