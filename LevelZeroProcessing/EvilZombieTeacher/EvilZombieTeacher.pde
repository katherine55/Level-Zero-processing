void setup() {
  size(300, 400);
}
void draw() {
  PImage face = loadImage("mean-teacher.jpg");
  image(face, 0, 0);
  fill(mouseX, mouseY, 98);
  ellipse(165, 160, 15, 13);
  fill(mouseX, mouseY, 255);
  ellipse(233, 165, 15, 13);
  fill(0, 0, 0);
  ellipse(165, 160, 6, 5);
  ellipse(233, 165, 6, 5);
}

