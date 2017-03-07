float pop = 0.5;  //must be between 0 and 1
float nextPop;  
float step = 0.001;
float value = 0.000004;
String Z = "";
int a = 4;
int b = 2;

void setup(){
size(1500,900);  
background(255);
noLoop();
//zoom();
}

void draw(){
  for (float lambda = 2; lambda < 4; lambda+=step) { 
    //println(pop + "          " + lambda);
    nextPop = lambda * pop * (1 - pop); 
    pop = nextPop;
    
    point((lambda * width/a - width/2) * b - 5, height - pop * height);
    stroke(0);
    if (lambda > 3) step = value;
  }
}

void keyPressed() {
 save("output" + Z + ".png");
 println("Screenshot taken!");
}

void zoom() {
  a = 7;
  b = 12;
  step = 0.7;
  value = 0.000001;
  Z = " zoom";
}
