imu_roll
=====
IMU roll angle
(used for gimbal positioning in some modes)

* **POST**

  * **URL**  
    `imu_roll/<roll>`
    
  * **URL Params**  
    
    `roll : Float` - Roll angle value (rad)
      
  * **Command example:**
    * `/api/v1/imu_roll/0.5`
    * ```javascript
      {
        "success": true
      }
      ```


