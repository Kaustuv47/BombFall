class Particle{
  PImage p;
  float x=random(width),y=random(-500,-50),speed=2,time=0;
  void create(){
    p = loadImage("Green.png");
    image(p,x,y);
  }
  void fall(){
    y=y+speed;
    time++;
    if(time==100){
    speed = speed+0.5;
    }
    if(y>height){
    y=-10;
    x=random(width);
    }
  }
}
