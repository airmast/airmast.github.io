white_balance
=====
Set white balance mode

* **POST**

  * **Camera models**
    * X3

  * **URL**  
    `white_balance/<mode>`
    
  * **URL Params**  
    * `mode : String` 
  
      Model X3:
    
      `auto`  
      `sunny`  
      `cloudy`  
      `insandescent`  
      `fluorescent`  
      `custom`
      
  * **Command example:**
    * `/api/v1/white_balance/auto`
    * ```javascript
      {
        "success": true
      }
      ```

