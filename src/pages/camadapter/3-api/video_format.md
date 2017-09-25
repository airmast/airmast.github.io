video_format
=====

Set video format
------------------

Request Type | URL 
-------------|-----
POST | **/api/v1/video_format/[`<format>`](#-format-)**

### `<format>`

Option | Supported DJI Zenmuse | Description
-------|-----------------------|------------
**mov** | X3, Z3, Z30 | MOV format
**mp4** | X3, Z3, Z30 | MPEG4 format

### Sample Request

```http
POST http://localhost:8123/api/v1/video_format/mov
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

