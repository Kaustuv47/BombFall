PImage img,go;
Particle[] p = new Particle[5];
Black[] black=new Black[4];
int count=0,flag=0;

PFont f;

void setup(){
  size(480,640);
  img = loadImage("66627399.jpg");
  go = loadImage("640-Cartoon-Clouds-l.jpg");
  for(int i=0;i<p.length;i++)
  p[i] = new Particle();
  for(int i=0;i<black.length;i++)
  black[i] = new Black();
  f= createFont("Times",16,true);
  
}
void draw(){
  if(flag==0){
  image(img,0,0);
      for(int j=0;j<p.length;j++){
      p[j].create();
      p[j].fall();
      }
  
      for(int j=0;j<black.length;j++){
      black[j].createBlack();
      black[j].fallBlack();
      }
  }
      
  for(int i=0;i<black.length;i++){
    if(black[i].y>=(height-50) && black[i].presentColour()==0){
      delay(1000);
      image(go,0,0);
      fill(226,31,24);
      textFont(f,36);
      text("Game Over !\n Score "+count,(width/2)-100,(height/2)-50);
      flag=1;
    }   
  }  
}

void keyPressed(){
  if(key == ESC){
  delay(500);
  exit();
  }
}

void mousePressed(){
  for(int i=0;i<black.length;i++){
      if(mouseX<(black[i].x+70)&&mouseX>black[i].x && mouseY<(black[i].y+70)&&mouseY>black[i].y){
        black[i].changeType();
        count+=1;
    }
  }
}
