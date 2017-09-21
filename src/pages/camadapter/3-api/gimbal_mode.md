gimbal_mode
=====
Gimbal mode

* **POST**

  * **URL**  
    `gimbal/<mode>`
    
  * **URL Params**  
    * `mode : String`  
      `follow` &mdash; Follow (look at copter flight direction by yaw)  
      `fpv` &mdash; FPV (nearly the same thing as follow)  
      `free` &mdash; Free (keep direction by yaw relatively to the ground)  
      
  * **Command example:**
    * `/api/v1/gimbal_mode/follow/`
    * ```javascript
      {
        "success": true
      }
      ```

