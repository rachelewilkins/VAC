
Timer t;
Dog dog1;
DogTwo dog2;
Prize chicken1;
Clouds cloud1;
PImage bg;




void setup () {

  fullScreen();
  frameRate(3);
  imageMode(CENTER);
  bg = loadImage("background.jpg");
  bg.resize(width, height);
  dog1 = new Dog();
  dog2 = new DogTwo();
  chicken1 = new Prize();
  cloud1 = new Clouds();
  
  
  
  t = new Timer(50);

}



void draw () {
  bg.resize(width, height);
  
  
  
  for(int i = 0; i <= 10; i ++){
    
    background(bg);
    dog1.walk();
    dog2.walk();     
    chicken1.display();
    cloud1.display();
  }
  
  
  
  
}