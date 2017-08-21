app
=====
Get application info or reset application video stream

* **POST**

  * **URL**  
    `app/reset_video`
    
  * **URL Params**  
    None
  
  * **Command example:**
    * `/api/v1/app/`
    * ```javascript
      {
        "success": true
      }
      ```

* **GET**

  * **URL**  
    `app/`
  
  * **Info**
  
    `build_date : String` - build date  
    `safe_sound : Int` - counter from 0 to 255 that increments every request  
    `uptime : String` - time since server start  
    `version : String` - application version  
    `video_connections : Int` - number of connections to video stream  
    `video_amount : Int` - amount of video data transferred (KiB)  
    `video_rate : Int` - speed of video stream (KiB/s)  
    `canbus_tx : Int` - amount of data transmitted by CAN bus (KiB)  
    `canbus_rx : Int` - amount of data received by CAN bus (KiB)  
    `zenmuse : String` - camera model name  
    
  * **Command example:**  
    `/api/v1/app/`  
    ```javascript
      {
        "build_date": "24.01.2017",
        "safe_sound": 89,
        "success": true,
        "uptime": "2 d, 03:35:08",

        "video_connections":10,
        "video_amount": 1234,
        "video_rate": 123,
        "canbus_tx": 500,
        "canbus_rx": 600,
        "zenmuse": "x3",

        "version": "v0.1.0 build 41"
      }
    ```


