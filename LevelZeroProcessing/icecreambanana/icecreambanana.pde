void setup(){
  size(1000, 700);

}
void draw(){
  PImage photo;
  photo = loadImage("banana_split_with_a_cherry_on_top_0515-1010-1302-3545_SMU.jpg");
image(photo, 150, 150);
  int distance = 275;
  for(int i = 0; i < 3; i++){
   distance += 100;
  text("Ice Cream!", distance, 400);
  }
  text("BANANA!", 475, 450);
}
