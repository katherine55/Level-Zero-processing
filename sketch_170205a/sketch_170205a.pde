int xhop =200;
int yhop= 390;
int hop=10;
boolean out;
Car[] cars =new Car[55];
void setup() {
  size(400, 400);
}

void draw() {
  background(48, 70, 8);
  fill(159, 240, 12);
  ellipse(xhop, yhop, 10, 10);
  offcanvas();
  car1.display();
  
  
}

void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      yhop-=hop;
    } else if (keyCode == DOWN)
    {
      yhop+=hop;
    } else if (keyCode == RIGHT)
    {
      xhop+=hop;
    } else if (keyCode == LEFT)
    {
      xhop-=hop;
    }
  }
}

void offcanvas () {
  
  if (0>yhop) {
yhop= 0;
  }
  if(400<yhop){
  yhop= 400;
  }
  
  if(0>xhop){
  xhop=0;
  }
  
  if(400<xhop){
  xhop=400;
  }
}

class Car {
int carx;
int cary;
int carsize;
int carspeed;
  void display() 
  {
    fill(0,255,0);
    rect(carx , cary,  carsize, 50);
  }
Car(int carx, int cary, int carsize, int carspeed){
this.carx=carx;
this.cary=cary;
this.carsize=carsize;
this.carspeed=carspeed;
}
}