camera
=====
Camera status

* **POST**

  * **URL**  
    `camera/<action>`
    
  * **URL Params**  
    * `action : String`  
      `reset` &mdash; reset zenmuse camera settings  
      `trigger_ffc` &mdash; trigger flat-field correction of the camera
  
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

    Common:  

    <table>
      <thead>
        <tr>
          <th>Parameter</th>
          <th>Type</th>
          <th>Description </th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>color</td>
          <td>String</td>
          <td>current color mode   </td>
        </tr>
        <tr>
          <td>color_system</td>
          <td>String</td>
          <td>"ntsc" or "pal"   </td>
        </tr>
        <tr>
          <td>image_format</td>
          <td>String</td>
          <td>current image format   </td>
        </tr>
        <tr>
          <td>mode</td>
          <td>String</td>
          <td>"video", "photo" or "playback" mode   </td>
        </tr>
      </tbody>
    <table>
    
    Model Xt (Rev A,B):  
    
    <table>
      <thead>
        <tr>
          <th>Parameter</th>
          <th>Type</th>
          <th>Description </th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>ffc_mode</td>
          <td>String</td>
          <td>"auto" or "manual" mode   </td>
        </tr>
        <tr>
          <td>isotherm</td>
          <td>String</td>
          <td>"on" or "off"   </td>
        </tr>
        <tr>
          <td>isotherm_units</td>
          <td>String</td>
          <td>"celsius" or "percentage"   </td>
        </tr>
        <tr>
          <td>isotherm_lower</td>
          <td>Int</td>
          <td>lower isotherm value   </td>
        </tr>
        <tr>
          <td>isotherm_middle</td>
          <td>Int</td>
          <td>middle isotherm value   </td>
        </tr>
        <tr>
          <td>isotherm_upper</td>
          <td>Int</td>
          <td>upper isotherm value   </td>
        </tr>
        <tr>
          <td>gain_mode</td>
          <td>String</td>
          <td>"auto", "low" or "high"   </td>
        </tr>
        <tr>
          <td>magnification</td>
          <td>Double</td>
          <td>magnification value </td>
        </tr>
        <tr>
          <td>measure_temperature</td>
          <td>String</td>
          <td>"off" or "on"   </td>
        </tr>
        <tr>
          <td>roi</td>
          <td>String</td>
          <td>"full", "skyex33" or "skyex50"   </td>
        </tr>
        <tr>
          <td>scene</td>
          <td>String</td>
          <td>"linear", "default", "seasky", "outdoor", "indoor", "manual", "user1", "user2" or "user3"   </td>
        </tr>
        <tr>
          <td>scene_ace</td>
          <td>Int</td>
          <td>scene ACE value   </td>
        </tr>
        <tr>
          <td>scene_brightness</td>
          <td>Int</td>
          <td>scene brightness value   </td>
        </tr>
        <tr>
          <td>scene_contrast</td>
          <td>Int</td>
          <td>scene contrast value   </td>
        </tr>
        <tr>
          <td>scene_dde</td>
          <td>Int</td>
          <td>scene DDE value   </td>
        </tr>
        <tr>
          <td>scene_sso</td>
          <td>Int</td>
          <td>scene SSO value   </td>
        </tr>
        <tr>
          <td>temperature</td>
          <td>Float</td>
          <td>temperature value (in centigrades)   </td>
        </tr>
      </tbody>
    </table>
    
    Models X3, Z3:  
    
    <table>
      <thead>
        <tr>
          <th>Parameter</th>
          <th>Type</th>
          <th>Description </th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>ev</td>
          <td>Double</td>
          <td>current EV value   </td>
        </tr>
        <tr>
          <td>digital_zoom</td>
          <td>Double</td>
          <td>current value of digital zoom   </td>
        </tr>
        <tr>
          <td>exposure_mode</td>
          <td>String</td>
          <td>current exposure mode ("auto", "shutter" or "manual")   </td>
        </tr>
        <tr>
          <td>iso</td>
          <td>Int</td>
          <td>current ISO value   </td>
        </tr>
        <tr>
          <td>shutter</td>
          <td>String</td>
          <td>current shutter value   </td>
        </tr>
        <tr>
          <td>video_format</td>
          <td>String</td>
          <td>current video format   </td>
        </tr>
        <tr>
          <td>video_size</td>
          <td>String</td>
          <td>current video size setting   </td>
        </tr>
        <tr>
          <td>white_balance</td>
          <td>String</td>
          <td>current white balance mode and value   </td>
        </tr>
        <tr>
          <td>color_temperature</td>
          <td>Int</td>
          <td>color temperature in Kelvins   </td>
        </tr>
      </tbody>
    </table>
    
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
    

