void setup(){
  size(1000, 1000);
   
}
void draw(){
  fill(118, 63, 7);
 rect(450, 50, 100, 150);

 fill(118, 63, 7);
 rect(600, 700, 100, 200);

 fill(118, 63, 7);
 rect(300, 700, 100, 200);
 for(int i = 11; i > 0; i--){
   if(i % 2 != 0){
fill(206, 0, 0);
    ellipse(500, 500, i * 55, i * 55);
   }
   else{
     fill(255, 255, 255);
     ellipse(500, 500, i * 55, i * 55);
  }
 }
}

