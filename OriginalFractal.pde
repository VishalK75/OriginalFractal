public void setup(){
  size(500,500);
  background(255, 102, 102);
  stroke(255, 255, 255);
}

public void draw(){
  background(0);
  myFractal(250, 250, 450);
}

public void myFractal(int x, int y, int siz){
  ellipse(x, y, siz, siz);
  fill(x-115, y-115, 150);
  if(siz > 23){
    myFractal(x-siz/4-siz/32-siz/64+siz/256, y, siz/4+siz/8+siz/32+siz/256);
    myFractal(x+siz/4+siz/32+siz/64-siz/256, y, siz/4+siz/8+siz/32+siz/256);
    myFractal(x, y-siz/4-siz/32-siz/64+siz/256, siz/4+siz/8+siz/32+siz/256);
    myFractal(x, y+siz/4+siz/32+siz/64-siz/256, siz/4+siz/8+siz/32+siz/256);
    myFractal(x, y, siz/8+siz/16-siz/64);
    myFractal(x-siz/4-siz/32-siz/64+siz/256, y-siz/4-siz/32-siz/64+siz/256, siz/8+siz/16-siz/64);
    myFractal(x+siz/4+siz/32+siz/64-siz/256, y+siz/4+siz/32+siz/64-siz/256, siz/8+siz/16-siz/64);
    myFractal(x-siz/4-siz/32-siz/64+siz/256, y+siz/4+siz/32+siz/64-siz/256, siz/8+siz/16-siz/64);
    myFractal(x+siz/4+siz/32+siz/64-siz/256, y-siz/4-siz/32-siz/64+siz/256, siz/8+siz/16-siz/64);
  }
}
