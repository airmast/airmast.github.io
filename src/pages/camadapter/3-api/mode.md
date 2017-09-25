mode
=====

Camera mode
------------------

Request Type | URL 
-------------|-----
POST | **/api/v1/mode/[`<mode>`](#-mode-)**


### `<mode>`

Option | Supported DJI Zenmuse | Description
-------|-----------------------|------------
**photo** | XT | Photo
**video** | XT | Video
**playback** | XT | Playback

### Sample Request

```http
POST http://localhost:8123/api/v1/mode/photo
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

