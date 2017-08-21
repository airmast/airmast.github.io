camera
=====
Camera status

* **POST**

  * **URL**  
    `camera/<action>`
    
  * **URL Params**  
    * `action : String`  
      `reset` - reset zenmuse camera settings  
      `trigger_ffc` - trigger flat-field correction of the camera
  
  * **Command example:**
    * `/api/v1/camera/reset`
    * ```javascript
      {
        "success": true
      }
      ```

* **GET**

  * **URL**  
    `camera/`
  
  * **Info**
  
    `color : String` - current color mode  
    `color_system : String` - "ntsc" or "pal"  
    `image_format : String` - current image format  
    `mode : String` - "video", "photo" or "playback" mode  
    
    Model Xt (Rev A,B):  
    
    `ffc_mode : String` - "auto" or "manual" mode  
    `isotherm : String` - "on" or "off"  
    `isotherm_units : String` - "celsius" or "percentage"  
    `isotherm_lower : Int` - lower isotherm value  
    `isotherm_middle : Int` - middle isotherm value  
    `isotherm_upper : Int` - upper isotherm value  
    `gain_mode : String` - "auto", "low" or "high"  
    `magnification : Double`  - magnification value  
    `measure_temperature : String` - "off" or "on"  
    `roi : String` - "full", "skyex33" or "skyex50"  
    `scene : String` - "linear", "default", "seasky", "outdoor", "indoor", "manual", "user1", "user2" or "user3"  
    `scene_ace : Int` - scene ACE value  
    `scene_brightness : Int` - scene brightness value  
    `scene_contrast : Int` - scene contrast value  
    `scene_dde : Int` - scene DDE value  
    `scene_sso : Int` - scene SSO value  
    `temperature : Float` - temperature value (in centigrades)  
    
    Models X3, Z3:  
    
    `ev : Double` - current EV value  
    `digital_zoom : Double` - current value of digital zoom  
    `exposure_mode : String` - current exposure mode ("auto", "shutter" or "manual")  
    `iso : Int` - current ISO value  
    `shutter : String` - current shutter value  
    `video_format : String` - current video format  
    `video_size : String` - current video size setting  
    `white_balance : String` - current white balance mode and value  
    `color_temperature : Int` - color temperature in Kelvins  
    
  * **Command example:**  
    `/api/v1/camera/`  
    ```javascript
      /* Models Xt */
      {
        "color":"None",
        "color_system": "ntsc",
        "image_format":"JPEG",
        "mode": "video",
        "ffc_mode": "auto",
        "isotherm": "on",
        "isotherm_units":"percentage",
        "isotherm_lower":90,
        "isotherm_middle":95,
        "isotherm_upper":100,
        "gain_mode":"auto",
        "magnification":2.0,
        "measure_temperature":"on",
        "roi":"full",
        "scene":"default",
        "scene_ace":1,
        "scene_brightness":5000,
        "scene_contrast":111,
        "scene_dde": 33,
        "scene_sso": 75,
        "temperature": 25
        }
    ```
    ```javascript
      /* Models X3, Z3 */
      {
        "color":"None",
        "color_system": "ntsc",
        "image_format":"JPEG",
        "mode": "video",
        "ev":"0.0",
        "digital_zoom":"X1",
        "exposure_mode":"auto",
        "iso":"200",
        "shutter":"0.0",
        "video_format":"MOV",
        "video_size":"3840x2160 (30fps)",
        "white_balance":"Auto (3700K)",
        "color_temperature": 3700,
        "success":true
      }
    ```
    

