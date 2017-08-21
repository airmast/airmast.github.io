imu_pitch
=====
IMU pitch angle
(used for gimbal positioning in some modes)

* **POST**

  * **URL**  
    `imu_pitch/<pitch>`
    
  * **URL Params**  
    
    `pitch : Float` - Pitch angle value (rad)
      
  * **Command example:**
    * `/api/v1/imu_pitch/0.5`
    * ```javascript
      {
        "success": true
      }
      ```


