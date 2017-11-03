
class Timer {
  
  int elapsedTime = 0;
  int interval;
  int currentFrame = 0;
  boolean paused = false;
  int numFrames = 6;
  
  
  
  Timer (int _interval) {
    interval = _interval;
  }
  
  
  
  int returnFrame() {
    
    if (paused == false) {
    
      if ((millis() - elapsedTime) >= interval) {
        currentFrame = (currentFrame + 1) % numFrames;
        elapsedTime = millis();  
        
      }
    } 
    
    return(currentFrame);
    
  }
  
  void restart() {
    
    elapsedTime = 0;
    
  }
  
  void pause() {
    
    paused = true;
    
    
  }
  
  void unpause() {
    
    paused = false;
    
  }
    
    
    
    
    
  }
  
  
  
  
  
  
  