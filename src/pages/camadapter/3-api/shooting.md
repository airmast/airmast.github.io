shooting
========

Start recording video (or photo) to card
----------------------------------------

Request Type | URL
-------------|-----
POST | **/api/v1/shooting/[`<value>`](#-value-)**

### `<value>`

Option    | Supported DJI Zenmuse | Description
----------|-----------------------|------------
**photo** | Any | Make a photo
**start** | Any | Start recording
**stop**  | Any | Stop recording

### Sample Request

```http
POST http://localhost:8123/api/v1/shooting/photo
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

Get current recording status
----------------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|-----------------------
GET |  **/api/v1/shooting** | Any

### JSON Response

Parameter | Type | Description
----------|------|------------
**video** | string | video recording status ("on", "off", "starting", "stopping")
**photo** | string | photo recording status ("storing" or "idle")
**duration_seconds** | number | duration in seconds since recording start
**duration** | string | formated time since recording start ("hh:mm:ss")
**remaining_seconds** | number | remaining seconds till memory card is full
**remaining_time** | string	| remaining time till memory card is full ("hh:mm:ss")
**remaining_space** | number | remaining space in MiB on memory card

### Sample Request

```http
GET http://localhost:8123/api/v1/shooting
```

### Sample Response

Status code: **200**

```javascript
{
  "video": "starting",
  "photo": "idle",
  "duration": "00:00:00",
  "duration_seconds": 0,
  "remaining_seconds": 1839,
  "remaining_space": 13153,
  "remaining_time": "00:30:39",
  "success": true
}
```
