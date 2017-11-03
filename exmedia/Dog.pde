class Dog {
  
  PImage[] testDog = new PImage[7];
  PImage[] backwardDog = new PImage[7];
  PImage[] backwardRightDog = new PImage[7];
  PImage[] forwardLeftDog = new PImage[7];
  String imageName;
  int numFrames = testDog.length - 1;
  int xpos = int(random(0,width));
  int ypos = int(random(0,height));
  int xdir = int(random(0,2));
  int ydir = int(random(0,2));
  int knowledgePercent = 0;
  boolean touching = false;
  int die = 0;
  boolean six = false;
  

  
  Dog () {

    
    for(int i = 0; i <= numFrames - 1; i ++){
      imageName = "forward_" + nf(i + 1, 1) + ".png";
      testDog[i] = loadImage(imageName);
      testDog[i].resize(100,100);
 
  }
  
    for(int i = 0; i <= numFrames - 1; i ++){
      imageName = "backwards_" + nf(i + 1, 1) + ".png";
      backwardDog[i] = loadImage(imageName);
      backwardDog[i].resize(100,100);
 
  }
    for(int i = 0; i <= numFrames - 1; i ++){
      imageName = "backwardright_" + nf(i + 1, 1) + ".png";
      backwardRightDog[i] = loadImage(imageName);
      backwardRightDog[i].resize(100,100);
 
  }
    for(int i = 0; i <= numFrames - 1; i ++){
      imageName = "forwardleft_" + nf(i + 1, 1) + ".png";
      forwardLeftDog[i] = loadImage(imageName);
      forwardLeftDog[i].resize(100,100);
 
  }
  
    
    
  }
  
  void checkEdges() {
    
    
    if (xpos >= width){
      xdir = 1;
    } else if (xpos <= 0) {
      xdir = 0;
    }
    
    if (ypos >= height){
      ydir = 1;
    }else if (ypos <= 100) {
      ydir = 0;
    }
    
    
  }
  
  void checkTouching() {
    
    if (((xpos >= (width / 2)) & (xpos <= ((width / 2) + 100))) & ((ypos >= (height / 2)) & (ypos <= ((height / 2) + 100)))) {
      
      touching = true;
    } else {
      
      touching = false;
    }
    
    
  }
  
  void moveToward(){
    
    for(int i = 0; i <= knowledgePercent; i ++){
      die = int(random(0,30));
      if (die == 6) {
        
        six = true;
        if (xpos >= ((width /2) + 100)) {
          xdir = 1;
          
        } else {
          xdir = 0;
        }
        if (ypos >= ((height /2) + 100)) {
          ydir = 1;
          
        } else {
          ydir = 0;
        }
        die = 0;
        break;
        
      }
      
    
      
    }
    
    
  
    
  }

  
  void walk() {
      
    checkEdges();
    moveToward();
    
    
    if (touching == true) {
      
      knowledgePercent += 1;
      xpos = int(random(0,width));
      ypos = int(random(0,height - 200));
      xdir = int(random(0,2));
      ydir = int(random(0,2));
      touching = false;
      
      
    }
    
    

    if (xdir == 0){
      xpos += random(0,3);
    } else{
      xpos -= random(0,3);
    }
    
    if (ydir == 0){
      ypos += random(0,3);
    } else{
      ypos -= random(0,3);
    }
    if ((xdir == 0) & (ydir == 0)){
      image(testDog[t.returnFrame()] , xpos, ypos);

    } else if ((xdir == 1) & (ydir == 1)){
      
      image(backwardDog[t.returnFrame()] , xpos, ypos);
    }else if ((xdir == 0) & (ydir == 1)){
      
      image(backwardRightDog[t.returnFrame()] , xpos, ypos);
    }else if ((xdir == 1) & (ydir == 0)){
      
      image(forwardLeftDog[t.returnFrame()] , xpos, ypos);
    }  
    
    
  }
  
}