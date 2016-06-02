void setup(){

  size(556, 556);
  background(166, 222, 204);
  
}

void draw(){

  for(int i = 1; i < 100; i++){

 fill(i *1.9, i*2, i*2.7);
 
  ellipse(getWormX(5), getWormY(5), 40, 50);

  }
           makeMagical();
}
int x = 1;
float frequency = .02;
float noiseInterval = PI; 

void makeMagical() {
  fill(0, 0, 0, 10);rect(0, 0, width, height);noStroke();

}

float getWormX(int i) {
//  x++;
//  fill(x, x, x);
//  
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
//  x++;
//  fill(x+10, x+100, x+30);
 
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}

