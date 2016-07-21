int randomr;
int randomb;


void setup(){
  setScreen();
}

void draw(){

}

void drawBlue (){
  randomb = (int)random(25);

for(int i = 0; i < randomb; i++){
  int rand = (int)random(25);
  int randx = (int)random(75)+25+125;
  int randy = (int)random(200)+25;
  fill(0,0,255);
ellipse(randx, randy, rand, rand);
}
}
void drawRed (){
  randomr = (int)random(25);

for(int i = 0; i < randomr; i++){
  int rand = (int)random(25);
  int randx = (int)random(75)+25;
  int randy = (int)random(200)+25;
  fill(255,0,0);
ellipse(randx, randy, rand, rand);
}
}

void setScreen(){
size(250, 250);
background(255, 255, 255);
line(125, 0, 125, 250);
  drawBlue();
  drawRed();
}

void keyPressed(){
  if(key == ' '){
    setScreen();
  }
    if(keyCode == LEFT){
    if(randomr > randomb){
      fill(0, 255, 0);
    text("Correct", 100, 125);
    }
    else if(randomr < randomb){
      fill(255, 0 , 0);
       text("Wrong", 100, 125);
    }
    }
    
    if(keyCode == RIGHT){
       if(randomb > randomr){
      fill(0, 255, 0);
    text("Correct", 100, 125);
    }
    else if(randomb < randomr){
      fill(255, 0 , 0);
       text("Wrong", 100, 125);
    }
    }
    
     if(keyCode == DOWN){
    if(randomr == randomb){
      fill(222, 22, 222);
    text("EQUAL!!", 100, 125);
    }
    else{
       fill(255, 0 , 0);
       text("Wrong", 100, 125);
    }
     }
}

