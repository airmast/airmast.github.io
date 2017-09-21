app
===

Get application info or reset application video stream

* **POST**

  * **URL**  
    `app/reset_video`

  * **URL Params**  
    None

  * **Command example:**
    * `/api/v1/app/`
    * ```javascript
      {
        "success": true
      }
      ```

* **GET**

  * **URL**  
    `app/`

  * **Info**

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
          <td>build_date</td>
          <td>String</td>
          <td>build date   </td>
        </tr>
        <tr>
          <td>safe_sound</td>
          <td>Int</td>
          <td>counter from 0 to 255 that increments every request   </td>
        </tr>
        <tr>
          <td>uptime</td>
          <td>String</td>
          <td>time since server start   </td>
        </tr>
        <tr>
          <td>version</td>
          <td>String</td>
          <td>application version   </td>
        </tr>
        <tr>
          <td>video_connections</td>
          <td>Int</td>
          <td>number of connections to video stream   </td>
        </tr>
        <tr>
          <td>video_amount</td>
          <td>Int</td>
          <td>amount of video data transferred (KiB)   </td>
        </tr>
        <tr>
          <td>video_rate</td>
          <td>Int</td>
          <td>speed of video stream (KiB/s)   </td>
        </tr>
        <tr>
          <td>canbus_tx</td>
          <td>Int</td>
          <td>amount of data transmitted by CAN bus (KiB)   </td>
        </tr>
        <tr>
          <td>canbus_rx</td>
          <td>Int</td>
          <td>amount of data received by CAN bus (KiB)   </td>
        </tr>
        <tr>
          <td>zenmuse</td>
          <td>String</td>
          <td>camera model name   </td>
        </tr>
      </tbody>
    </table>

  * **Command example:**  
    `/api/v1/app/`  
    ```javascript
      {
        "build_date": "24.01.2017",
        "safe_sound": 89,
        "success": true,
        "uptime": "2 d, 03:35:08",

        "video_connections":10,
        "video_amount": 1234,
        "video_rate": 123,
        "canbus_tx": 500,
        "canbus_rx": 600,
        "zenmuse": "x3",

        "version": "v0.1.0 build 41"
      }
    ```
