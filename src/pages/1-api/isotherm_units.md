isotherm_units
=====
Set isotherm units

* **POST**

  * **Camera models**
    * Xt

  * **URL**  
    `isotherm_units/<unit>`
    
  * **URL Params**  
    * `unit : String`  
    
      Model Xt:
      
      `celsius` &mdash; Celsius degrees  
      `percentage` &mdash; Use percents for isotherm values  
      
  * **Command example:**
    * `/api/v1/isotherm_units/celsius`
    * ```javascript
      {
        "success": true
      }
      ```


