imu_pitch
=====
IMU pitch angle
(used for gimbal positioning in some modes)

* **POST**

  * **URL**  
    `imu_pitch/<pitch>`
    
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
          <td>pitch</td>
          <td>Float</td>
          <td>Pitch angle value (rad) </td>
        </tr>
      </tbody>
    </table>
      
  * **Command example:**
    * `/api/v1/imu_pitch/0.5`
    * ```javascript
      {
        "success": true
      }
      ```


