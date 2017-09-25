scene
=====

Set camera's scene type
------------------

Request Type | URL 
-------------|-----
POST | **/api/v1/scene/[`<type>`](#-type-)**

### `<type>`

Option | Supported DJI Zenmuse | Description
-------|-----------------------|------------
**linear**    | XT | Linear mode
**default** | XT | Default mode
**seasky** | XT | Seasky mode
**outdoor** | XT | Outdoor mode
**indoor** | XT | Indoor mode
**manual** | XT | Manual mode
**user1** | XT | User1 mode
**user2** | XT | User2 mode
**user3** | XT | User3 mode

### Sample Request

```http
POST http://localhost:8123/api/v1/scene/linear
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```

