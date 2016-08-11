  int x= 375;
  int y= 375;
  int w= 50;
  int h= 50;
  int birdYVelocity = 0;
  int gravity = 1;
  int pipeX = 750;
  int random = (int) random(100, 300);
  int random2 = (int) random(100, 300);

void setup(){
size(750, 750);

}

void draw(){

background(30, 191, 229);
fill(255, 217, 26);

birdYVelocity += gravity;
y+=birdYVelocity;
ellipse(x, y, w, h);
pipeX-=4;
fill(31, 206, 29);
rect(pipeX,750-random, 100, random);

fill(31, 206, 29);
rect(pipeX, 0, 100, random2);

fill(108, 76, 7);
rect(0, 700, 750, 100);

if(pipeX <= -100){
pipeX += 750;
random = (int) random(100, 550);

}

if(intersects(x, y, pipeX, 750-random, random)){
  
  println("Game Over");
  System.exit(0);
  
}

if(intersects(x, y, pipeX, 0, random2)){
  
  println("Game Over");
  System.exit(0);
  
}

}
boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY > paddleY-4 && birdX > paddleX && birdX < paddleX + paddleLength/2)
return true;
else 
return false;
}



void mousePressed(){
birdYVelocity=-15;
}
