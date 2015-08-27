void setup(){
size(500, 500);
fill(234, 164, 71);
ellipse(250, 250, 450, 450);
fill(167, 34, 34);
ellipse(250, 250, 400, 400);
fill(255, 184, 3, 90);
ellipse(250, 250, 370, 370);
//fill(255, 243, 3, 95);
//ellipse(250, 250, 350, 350);
imageMode(CENTER);
}
void draw(){
  PImage pepperoni = loadImage("pepperoni.ppm.gif");
  PImage cheese = loadImage("totetude-grated-cheese-pizza-topping-hi.png");
  cheese.resize(100, 100);
  pepperoni.resize(75, 75);
  if(mousePressed && (mouseButton == RIGHT)){
    image(pepperoni, mouseX, mouseY);
  }
  else if(mousePressed && (mouseButton == LEFT)){
    image(cheese, mouseX, mouseY);
  }
}
