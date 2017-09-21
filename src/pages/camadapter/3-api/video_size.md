video_size
=====
Set video resolution and FPS

* **POST**

  * **Camera models**
    * X3

  * **URL**  
    `video_size/<resolution>p<fps>`
    
  * **URL Params**  
    Model X3:
    
    * `resolution : String` &mdash; "4096x2160", "3840x2160", "2704x1520", "1920x1080", "1280x720"
    * `fps : Integer` &mdash; "24", "25", "30", "48", "50", "60", "120"
      
  * **Command example:**
    * `/api/v1/video_size/1920x1080p30`
    * ```javascript
      {
        "success": true
      }
      ```

