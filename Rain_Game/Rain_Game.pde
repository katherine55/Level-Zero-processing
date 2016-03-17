int yPos = 0;
int xPos = int (random(750));
int score = 0;

void setup(){
  size(750, 750);    
}

void draw(){
background(70, 142, 74);
fill(0, 0, 0);
textSize(16);
text("Score: " + score, 20, 20);

fill(70, 44, 3);
rect(mouseX, 700, 100, 50);

fill(168, 199, 222);
ellipse(xPos, yPos, 20, 65);
stroke(0, 0, 0);
if(yPos == 750){

checkCatch(xPos);
 
if(score < 22 && score >= -1){
yPos = 0;
}

xPos = int (random(750));
}
yPos+=25;
if (score < 0){
   fill(0, 0, 0);
textSize(25);
text("Game Over!", 375, 375);
}
else if (score > 21){
     fill(0, 0, 0);
textSize(25);
text("You Won!", 375, 375);
}
}

void checkCatch(int x){
if (x > mouseX && x < mouseX+100){
      score++;}
   else{
     score--;
println("Your score is now: " + score);}

}

