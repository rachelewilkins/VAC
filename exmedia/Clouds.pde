class Clouds {
  PImage[] cloud1 = new PImage[3];
  int xpos = 100;
  String imageName;
  int numFrames = cloud1.length - 1;
  
  
  Clouds () {
    
    for(int i = 0; i <= numFrames - 1; i ++){
      imageName = "cloud_" + nf(i + 1, 1) + ".png";
      cloud1[i] = loadImage(imageName);
      cloud1[i].resize(100,100);
 
  }
  
  }


    
  
  void display () {

    
    
  
  

  
  }
  
  
}