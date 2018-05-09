/**
*Animated Square assignment
*by Caleb Kryton
*
*The purpose of this assignment is to
*use animations to move a square with keypresses
*as well as experiment with other options 
*like changing speed and proximity detection
*/
int x;//Values to manipulate later
int y;

int deltax = 1;//values for movement
int deltay = 1;

int speed = 2;//Speed of rectangle

void setup(){
  size(700,700);//Size of canvas
  
  x=width/2;//Set x and y to center of canvas
  y=height/2;
  
}

void draw(){
 
  if (y == 720) { //Set x and y limit for wrapping
    y = 0;
  }
  if (x == 720){
    x = 0;
  }
  if (x == -20){
    x = 700;
  }
  if (y == -20) {
    y = 700;
  }
 
  background(255,255,255);
  
  if (y <= 40) {//Formula for proximity detection
    fill(0,0,0);
    text("Warning: Wormhole detected ahead. Approach with caution.",200,300);
  }
  
  fill(0,0,0);
  rect(x,y,20,20);//Draw rectangle that will be manipulated
  
  fill(255,0,0);//Draw red danger zone
  rect(0,0,700,40);
 
  
  fill(0,0,255);
  text(speed, 50,100);//Print out speed
  text(y, 50,150);//Print y value
  text(x,50,200);
}

void keyPressed() {
    if (keyCode == UP) {//Set key bindings
      y = y-speed;
    }
    if (keyCode == DOWN) {
      y = y+speed;
    }
    if (keyCode == LEFT) {
      x = x-speed;
    }
    if (keyCode == RIGHT) {
      x = x+speed;
    }
    if (key == 112) {// Option for aditional speed
      speed = 4;
    }
    if (key == 111) {//Option for lowerspeed
      speed = 1;
    }
  
  
}
