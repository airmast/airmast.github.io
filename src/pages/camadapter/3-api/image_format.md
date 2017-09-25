image_format
=====

Set image format
-----------------

Request Type | URL 
-------------|-----
POST | **/api/v1/image_format/[`<format>`](#-format-)**


### `<format>`

Option | Supported DJI Zenmuse | Description
-------|-----------------------|------------
**rjpeg** | XT | Radiometric JPEG image
**tiff**  | XT | Tiff 14 bit image format
**jpeg**  | XT | JPEG image format

### Sample Request

```http
POST http://localhost:8123/api/v1/image_format/rjpeg
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

