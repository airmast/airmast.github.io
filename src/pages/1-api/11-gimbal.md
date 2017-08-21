gimbal
=====
Gimbal orientation

* **POST**

  * **URL**  
    `gimbal/center`
    
  * **URL Params**  
    None - execute gimbal centering (yaw only)
      
  * **Command example:**
    * `/api/v1/gimbal/center`
    * ```javascript
      {
        "success": true
      }
      ```
      
* **GET**

  * **URL**  
    `gimbal/`
  
  * **Info**
  
    `own_roll : Float` — roll angle referenced to frame (rad)  
    `own_pitch : Float` — pitch angle referenced to frame (rad)  
    `own_yaw : Float` — yaw angle referenced to frame (rad)  
    `stab_roll : Float` — roll angle referenced to ground (rad)  
    `stab_pitch : Float` — pitch angle referenced to ground (rad)  
    `stab_yaw : Float` — yaw angle referenced to ground after centering (rad)
    
  * **Command example:**  
    `/api/v1/gimbal/`  
    ```javascript
      {
        "success": true,
        "own_roll": 0.255,
        "own_pitch": 1,
        "own_yaw": -1.0,
        "stab_roll": 0,
        "stab_pitch": 1.5707,
        "stab_yaw": 0
      }
    ```



