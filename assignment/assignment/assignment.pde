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

int speed = 2;

void setup(){
  size(700,700);//Size of canvas
  
  x=width/2;//Set x and y to center of canvas
  y=height/2;
  
}

void draw(){
 
  background(255,255,255);
  
  fill(0,0,0);
  rect(x,y,20,20);//Draw rectangle that will be manipulated
  
  fill(255,0,0);//Barrier for later use
  rect(0,0,700,40);
  
  text(speed, 100,100);
}

void keyPressed() {
    if (keyCode == UP) {
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
    if (key == 112) {
      speed = 4;
    }
    if (key == 111) {
      speed = 1;
    }
  
  
}
