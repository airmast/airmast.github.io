scene_dde
=====
Set digital detail enhancement

* **POST**

  * **Camera models**
    * Xt

  * **URL**  
    `scene_dde/<dde>`
    
  * **URL Params**  
    * `dde : Integer`  
    
      Model Xt: `dde` &mdash; DDE is a value from -20 to 100,
      negative values soften the image and positive values
      sharpen it
      
  * **Command example:**
    * `/api/v1/scene_dde/33`
    * ```javascript
      {
        "success": true
      }
      ```


