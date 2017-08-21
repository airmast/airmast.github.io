zoom
=====
Zoom

* **POST**

  * **URL**  
    `zoom/<action>`
    
  * **URL Params**  
    * `action : String` 
  
      `in` &mdash; Start zooming in (Tele)  
      `out` &mdash; Start zooming out (Wide)  
      `stop` &mdash; Stop zooming  
      
      **Note**: Zoom in or out command need to be stopped by stop command.
      
  * **Command example:**
    * `/api/v1/zoom/stop`
    * ```javascript
      {
        "success": true
      }
      ```

