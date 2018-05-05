/**
*Animated Square assignment
*by Caleb Kryton
*
*The purpose of this assignment is to
*use animations to move a square with keypresses
*as well as experiment with other options 
*like changing speed and proximity detection
*/
int x = width/2;//Set position of square
int y = height/2;

void setup(){
  size(700,700);//Size of canvas
}

void draw(){
  background(255,255,255);
  
  fill(0,0,0);
  rect(x,y,20,20);//Draw rectangle that will be manipulated
  
  fill(255,0,0);//Barrier for later use
  rect(0,0,700,40);
}
