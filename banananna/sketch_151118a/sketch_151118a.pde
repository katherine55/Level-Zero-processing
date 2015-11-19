void setup(){
size(500, 500);

}
void draw(){
  int y = 15;
  int red = 255;
  int green = 255;
  int blue = 5;
  for(int i = 0; i <100; i++){
    fill(red, green, blue);
 
 text("banana", 230, y);
  y+=15;
  red -=7;
  green-=20;
  blue+= 4;
  }
}

