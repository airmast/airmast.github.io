gimbal
=====
Gimbal orientation

* **POST**

  * **URL**  
    `gimbal/center`
    
  * **URL Params**  
    None &mdash; execute gimbal centering (yaw only)
      
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

    <table>
      <thead>
        <tr>
          <th> Parameter </th>
          <th> Type  </th>
          <th> Description </th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>own_roll</td>
          <td>Float</td>
          <td>roll angle referenced to frame (rad)</td>
        </tr>
        <tr>
          <td>own_pitch</td>
          <td>Float</td>
          <td>pitch angle referenced to frame (rad)</td>
        </tr>
        <tr>
          <td>own_yaw</td>
          <td>Float</td>
          <td>yaw angle referenced to frame (rad)</td>
        </tr>
        <tr>
          <td>stab_roll</td>
          <td>Float</td>
          <td>roll angle referenced to ground (rad)</td>
        </tr>
        <tr>
          <td>stab_pitch</td>
          <td>Float</td>
          <td>pitch angle referenced to ground (rad)</td>
        </tr>
        <tr>
          <td>stab_yaw</td>
          <td>Float</td>
          <td>yaw angle referenced to ground after centering (rad)</td>
        </tr>
      </tbody>
    </table>
    
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



