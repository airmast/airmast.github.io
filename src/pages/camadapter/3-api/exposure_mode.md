exposure_mode
=====
Set exposure mode

* **POST**

  * **Camera models**
    * X3

  * **URL**  
    `exposure_mode/<mode>`
    
  * **URL Params**  
    * `mode : String`  
    
      Model X3:
      
      `auto`  
      `shutter`  
      `manual`  
      
  * **Command example:**
    * `/api/v1/exposure_mode/auto`
    * ```javascript
      {
        "success": true
      }
      ```


