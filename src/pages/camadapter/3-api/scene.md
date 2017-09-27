scene
=====

Set camera's scene mode
-----------------------

Request Type | URL | Supported DJI Zenmuse
-------------|-----|----------------------
POST | **/api/v1/scene/[`<value>`](#-value-)** | XT

### `<value>`

Option | Description
-------|------------
**default** | Default scene mode
**indoor** | Indoor scene mode
**linear** | Linear scene mode
**manual** | Manual scene mode
**outdoor** | Outdoor scene mode
**seasky** | Seasky scene mode
**user1** | User1 scene mode
**user2** | User2 scene mode
**user3** | User3 scene mode

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
