class Black{
  PImage br;
  PImage pbr;

  float x=random(width),y=random(-500,-50),speed=2;
  float c=0,time=0;
 void createBlack(){
   if(c==0){
     br = loadImage("BlackRocket.png");
    image(br,x,y);
   }
   else{
     pbr = loadImage("Green.png");
    image(pbr,x,y);
   }
  }
  void fallBlack(){
    y=y+speed;
    time++;
    if(time==100){
    speed = speed+0.5;
    }
    if(y>=height){
     y=0;
     x=random(width);
     c=0;
     br = loadImage("BlackRocket.png");
    image(br,x,y);
    }
  } 
  float x(){
    return x;
  }
  float y(){
    return y;
  }
  void changeType(){
  c=255;
  pbr = loadImage("Green.png");
    image(pbr,x,y);
  }
  int presentColour(){
   return(int(c));
  }
}
