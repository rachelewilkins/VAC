class DogTwo {
  
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
  


  
  DogTwo () {

    
    for(int i = 0; i <= numFrames - 1; i ++){
      imageName = "dalmation_" + nf(i + 1, 1) + ".png";
      testDog[i] = loadImage(imageName);
      testDog[i].resize(100,100);
 
  }
  
    for(int i = 0; i <= numFrames - 1; i ++){
      imageName = "dalmationbackwardleft_" + nf(i + 1, 1) + ".png";
      backwardDog[i] = loadImage(imageName);
      backwardDog[i].resize(100,100);
 
  }
    for(int i = 0; i <= numFrames - 1; i ++){
      imageName = "dalmationbackwardright_" + nf(i + 1, 1) + ".png";
      backwardRightDog[i] = loadImage(imageName);
      backwardRightDog[i].resize(100,100);
 
  }
    for(int i = 0; i <= numFrames - 1; i ++){
      imageName = "dalmationforwardleft_" + nf(i + 1, 1) + ".png";
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

  
  void walk() {
      
    checkEdges();

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