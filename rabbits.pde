float pop = 0.5;  //must be between 0 and 1
float nextPop;
float step;
float lambda = 1.9;
int a = 4;
int b = 2;
String Z = "";

void setup() {
  size(1280, 720);
  background(255);
  noSmooth();
  noLoop();
  strokeWeight(0.7);
  float dens = 0.6872106;    //(lambda/step)/(height*width);
  step = (lambda/dens)/(height * width);
  //use this function to zoom into the chaos zone
  //zoom();
}

void draw() {
  for (; lambda < 4; lambda+=step) { 
    nextPop = lambda * pop * (1 - pop); 
    pop = nextPop;

    point((lambda * width/a - width/2) * b - 5, height - pop * height);
  }
  println("DONE!");
}

void mousePressed() {println(lambda);}

void keyPressed() {
  save("output" + Z + ".tiff");
  println("Screenshot taken!");
}

void zoom() {
  a = 7;
  b = 12;
  float densZoom = 1.5180267;
  step = (lambda/densZoom)/(height * width);
  lambda = 3.4;
  Z = " zoomed";
}
