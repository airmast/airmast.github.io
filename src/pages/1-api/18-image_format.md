image_format
=====
Set image format

* **POST**

  * **Camera models**
    * Xt

  * **URL**  
    `image_format/<format>`
    
  * **URL Params**  
    * `format : String`  
    
      Model Xt:
      
      `rjpeg` - Radiometric JPEG image  
      `tiff` - Tiff 14 bit image format  
      `jpeg` - JPEG image format  
      
  * **Command example:**
    * `/api/v1/image_format/rjpeg`
    * ```javascript
      {
        "success": true
      }
      ```


