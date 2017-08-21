imu_roll
=====
IMU roll angle
(used for gimbal positioning in some modes)

* **POST**

  * **URL**  
    `imu_roll/<roll>`
    
  * **URL Params**  
    <table>
      <thead>
        <tr>
          <th>Parameter</th>
          <th>Type</th>
          <th>Description </th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>roll</td>
          <td>Float</td>
          <td>Roll angle value (rad) </td>
        </tr>
      </tbody>
    </table>
      
  * **Command example:**
    * `/api/v1/imu_roll/0.5`
    * ```javascript
      {
        "success": true
      }
      ```


