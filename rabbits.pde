float pop = 0.5;  //must be between 0 and 1
float nextPop;  
float lambda = 0.5; //must be between 0 and 4
float step = 0.005;
float timing;

void setup(){
size(1280,720);  
background(0);
println("Loops: " + 3/step);
}

void draw(){
  if (lambda < 4.1) {
    //println(pop + "          " + lambda);
    nextPop = lambda * pop * (1 - pop); 
    pop = nextPop;
    
    point(lambda *200, height/1.5 - pop * 300);
    stroke(255);
    lambda+=step;
    if (lambda >= 3.1) step = 0.00005;
  }
  //else end();
}

void end() {
 save("output.png"); 
 exit();
}