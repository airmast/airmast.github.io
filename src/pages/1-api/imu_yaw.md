imu_yaw
=====
IMU yaw angle
(used for gimbal positioning in some modes)

* **POST**

  * **URL**  
    `imu_yaw/<yaw>`
    
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
          <td>yaw</td>
          <td>Float</td>
          <td>Yaw angle value (rad) </td>
        </tr>
      </tbody>
    </table>
      
  * **Command example:**
    * `/api/v1/imu_yaw/0.5`
    * ```javascript
      {
        "success": true
      }
      ```


