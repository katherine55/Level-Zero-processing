int xhop =200;
int yhop= 390;
int hop=10;
boolean out;
Car[] cars =new Car[8];
void setup() {
  size(400, 400);
  for (int i = 0; i< cars.length; i++) {
    cars[i]=new Car(0, i*50, i+(int)random(10, 60), (int)random(1, 10));
  }
}

void draw() {
  background(48, 70, 8);
  fill(159, 240, 12);
  ellipse(xhop, yhop, 10, 10);
  offcanvas();
  for (int i=0; i<cars.length; i++) {

    if (i%2==0) {
      cars[i].mleft();
    } else {
      cars[i].mright();
    }
    cars[i].display();
    
    if(intersects(cars[i])){
    xhop= 200;
    yhop= 390;
    }
    win();
  }
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
  if (400<yhop) {
    yhop= 400;
  }

  if (0>xhop) {
    xhop=0;
  }

  if (400<xhop) {
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
    fill(0, 255, 0);
    rect(carx, cary, carsize, 25);
  }
  Car(int carx, int cary, int carsize, int carspeed) {
    this.carx=carx;
    this.cary=cary;
    this.carsize=carsize;
    this.carspeed=carspeed;
  }
  void mleft() {
    carx+=carspeed;
    if (carx>400) {
      carx=0;
    }
  }

  void mright() {
    carx-=carspeed;
    if (carx<0) {
      carx=400;
    }
  }

    int getX() {
      int x = this.carx;
      return x;
    }

    int getY() {
      int y = this.cary;
      return y;
    }

    int getSize() {
      int size = this.carsize;
      return size;
    }
  
}

boolean intersects(Car car) {
if ((yhop > car.getY() && yhop < car.getY()+20) && (xhop > car.getX() && xhop < car.getX()+car.getSize()))
          return true;
    else 
        return false;
}
void win (){
if(yhop<10){
  fill(0,0,0);
  text("you won",0,200);
  textSize(100);
  
}
}