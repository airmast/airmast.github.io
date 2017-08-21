shooting
=====
Recording video (or photo) to card

* **POST**

  * **URL**  
    `shooting/<action>`
    
  * **URL Params**  
    * `action : String`  
    
      `photo` - Make a photo  
      `start` - Start a recording  
      `stop` - Stop recording
      
  * **Command example:**
    * `/api/v1/shooting/photo`
    * ```javascript
      {
        "success": true
      }
      ```

* **GET**

  * **URL**  
    `shooting/`
  
  * **Info**
  
    `video : String` - video recording status ("on", "off", "starting", "stopping")  
    `photo : String` - photo recording status ("storing" or "idle")  
    `duration_seconds : Int` - duration in seconds since recording start  
    `duration : String` - formated time since recording start ("hh:mm:ss")  
    `remaining_seconds : Int` - remaining seconds till memory card is full  
    `remaining_time : String` - remaining time till memory card is full ("hh:mm:ss")  
    `remaining_space : Int` - remaining space in MiB on memory card  
    
  * **Command example:**  
    `/api/v1/shooting/`  
    ```javascript
      {
        "video": "starting",
        "photo": "idle",
        "duration": "00:00:00",
        "duration_seconds": 0,
        "remaining_seconds": 1839,
        "remaining_space": 13153,
        "remaining_time": "00:30:39",
        "success": true
      }
    ```

