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
      
      `rjpeg` &mdash; Radiometric JPEG image  
      `tiff` &mdash; Tiff 14 bit image format  
      `jpeg` &mdash; JPEG image format  
      
  * **Command example:**
    * `/api/v1/image_format/rjpeg`
    * ```javascript
      {
        "success": true
      }
      ```


