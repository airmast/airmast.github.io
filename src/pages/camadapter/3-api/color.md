color
=====


Set color mode
--------------

Request Type | URL
-------------|----
POST |  **/api/v1/color/[`<value>`](#-value-)**

### `<value>`

Option | Supported DJI Zenmuse | Description
-------|-----------------------|------------
**art** | X3, Z3 | Set color mode to “Art”
**beach** | X3, Z3 | Set color mode to “Beach”
**blackhot** | XT | Set color mode to “Black Hot”
**bw** | X3, Z3 | Set color mode to “Black & White”
**classic** | X3, Z3 | Set color mode to “Classic”
**color1** | XT | Set color mode to “Color 1”
**color2** | XT | Set color mode to “Color 2”
**d-cinelike** | X3, Z3 | Set color mode to “D-Cinelike”
**d-log** | X3, Z3 | Set color mode to “D-Log”
**dream** | X3, Z3 | Set color mode to “Dream”
**fusion** | XT | Set color mode to “Fusion”
**globow** | XT | Set color mode to “Globow”
**greenhot** | XT | Set color mode to “Green Hot”
**icefire** | XT | Set color mode to “Ice Fire”
**ironbow1** | XT | Set color mode to “Ironbow 1”
**ironbow2** | XT | Set color mode to “Ironbow 2”
**jugo** | X3, Z3 | Set color mode to “Jugo”
**none** | X3, Z3 | Set color mode to default (without filter)
**rain** | XT | Set color mode to “Rain”
**rainbow** | XT | Set color mode to “Rainbow”
**redhot** | XT | Set color mode to “Red Hot”
**sepia** | XT | Set color mode to “Sepia”
**vivid** | X3, Z3 | Set color mode to “Vivid”
**whitehot** | XT | Set color mode to “White Hot”

### Sample Request

```http
POST http://localhost:8123/api/v1/color/classic
```

### Sample Response

Status code: **200**

```javascript
{
    "success": true
}
```
