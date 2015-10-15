void setup(){
  size(1000, 750);
}
void draw(){
  int size1 = 0;
  int distance = 250;
  int center = 500;
  //if(distance > 0){
    //distance -=10;
  //}
    for(int i = 1; i < 25; i ++){
    noFill();
    ellipse(center-distance,375,size1 +20, size1 +20);
    size1 += 20;
  }
  int size2 = 0;
  for(int i = 1; i < 25; i ++){
    noFill();
    ellipse(center + distance ,375, size2 +20, size2 +20);
    size2 += 20;
  }
//void bullseye(){
//      for(int i = 1; i < 25; i ++){
 //   noFill();
 //   ellipse(center + distance ,375, size2 +20, size2 +20);
 //   size2 += 20;
//  }
}
