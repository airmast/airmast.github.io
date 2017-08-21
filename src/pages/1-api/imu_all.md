imu_all
=====
IMU roll, pitch and yaw angles
(used for gimbal positioning in some modes)

* **POST**

  * **URL**  
    `imu_all/<roll>:<pitch>:<yaw>`
    
  * **URL Params**  
    
    `roll : Float`, `pitch : Float`, `yaw : Float` &mdash; roll, pitch and yaw angle values (rad)
      
  * **Command example:**
    * `/api/v1/imu_all/0.5:-0.1:-1.57`
    * ```javascript
      {
        "success": true
      }
      ```


