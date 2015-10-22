int bye = 1000;
boolean direction = true;
int distance = 10;
void setup() {
  size(1000, 750);
}

void draw() {
  background(149, 149, 149);
  
  if (distance == 0) {
    direction = false;
  }
  if (distance == 250) {
    direction = true;
  }
if (direction == true) {
    distance --;
  }
  else if (direction == false) {
    distance ++;
  }
  //hi();
  //for(int k = 1; k<100; k++){
  left();
  right();
  //}
}

void left() {
  int size1 = 0;
  //int distance = 250;
  int center = 500;
  int size2 = 0;
  for (int i = 1; i < 25; i ++) {
    noFill();
    ellipse(center-distance, 375, size1 +20, size1 +20);
    size1 += 20;
  }
}
void right() {
  int size1 = 0;
  //int distance = 250;
  int center = 500;
  int size2 = 0;
  for (int i = 1; i < 25; i ++) {
    noFill();
    ellipse(center + distance, 375, size2 +20, size2 +20);
    size2 += 20;
  }
}

//void hi(){
//  int position= 50;
//  for(int hi = 1; hi < 10000; hi++){
//    position+=10;
//    ellipse(position, 375, 200, 200);

//  }

