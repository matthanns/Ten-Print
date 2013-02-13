import processing.opengl.*;

float m = 0.0003;
int x = frameCount/20*5;
int c = int(2*5);
int s = 40;

void setup(){
 size(1000,1000, OPENGL);
 background(255);  
}

void draw() {
  frameRate(30);
  translate(width/2, height/2);
  scale(0.3);
  for(int x=0; x < width; x+=s) {
    for(int y=0; y < height; y+=s) {
      for(int i=0;i<1;i++){
        stroke(0,20);
        strokeWeight(2);
      if(noise(x/50f,y/50f,frameCount/100f)>0.5) {   
        rotateY(frameCount*m/10);
        line(x*i,y*i,x+s*i,y+s*i);
      } else {
        rotateX(frameCount*m/10);
        rotateZ(frameCount*m/10);
        line(x+s*i,y*i,x*i,y+s*i);
          
        }
      }
    }
  }
  //saveFrame("tenprint-######.png");
}
