float pop = 0.5;  //must be between 0 and 1
float nextPop;  
float step = 0.000005;

void setup(){
size(1500,900);  
background(101);
noLoop();
}

void draw(){
  for (float lambda = 1; lambda < 4.1; lambda+=step) {
    //println(pop + "          " + lambda);
    nextPop = lambda * pop * (1 - pop); 
    pop = nextPop;
    
    point((lambda * width/4 - width/2) * 2 - 5, height - pop * height);
    stroke(255);
    //println(lambda);
  }
}

void keyPressed() {
 save("output.png"); 
}
