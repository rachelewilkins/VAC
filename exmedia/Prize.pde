
class Prize {
  
  PImage[] chicken = new PImage[7];
  String imageName;
  int numFrames = chicken.length - 1;
  int xpos = width / 2;
  int ypos = height / 2;  
  
  
  Prize () {
    
    for(int i = 0; i <= numFrames - 1; i ++){
      imageName = "chicken_" + nf(i + 1, 1) + ".png";
      chicken[i] = loadImage(imageName);
      chicken[i].resize(100,100);
 
  }
  

  }
  
  
  void display () {
    
    image(chicken[t.returnFrame()] , xpos, ypos);
    
  }
    
  
  
  
  
  
  
  
  
}