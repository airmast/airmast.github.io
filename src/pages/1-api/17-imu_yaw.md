imu_yaw
=====
IMU yaw angle
(used for gimbal positioning in some modes)

* **POST**

  * **URL**  
    `imu_yaw/<yaw>`
    
  * **URL Params**  
    
    `yaw : Float` - Yaw angle value (rad)
      
  * **Command example:**
    * `/api/v1/imu_yaw/0.5`
    * ```javascript
      {
        "success": true
      }
      ```


