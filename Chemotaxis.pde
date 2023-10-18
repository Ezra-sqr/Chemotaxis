   Bacteria [] bob;
void setup(){     
  noStroke();
   size (500,500);
   background (170);
  bob = new Bacteria[40];
for (int i=0; i<bob.length; i++)
  bob[i]= new Bacteria();
 }   
 void draw()   
 {    
   fill (170);
   rect (0,0,500,500);
for (int i=0; i<bob.length; i++){
bob[i].move();
  bob[i].show();
 }
}  
 class Bacteria    
 {     
int myX, myY, Mycolor;
Bacteria (){
myX= myY= 100;
Mycolor= color((int) (Math.random() *160),(int)(Math.random()*160),(int)(Math.random()*160),85);
}
void show(){
fill (Mycolor);
ellipse (myX, myY, 15,15);
}
void move(){
  if (dist(mouseX,mouseY,myX,myY)<150){
if (mouseX>myX)
myX= myX+((int)(Math.random()*11))-3;
else
myX= myX+((int)(Math.random()*11))-7;
if (mouseY>myY)
myY= myY+((int)(Math.random()*11))-3;
else
myY= myY+((int)(Math.random()*11))-7;
  }
  else{
    myX= myX+((int)(Math.random()*7))-3;
    myY= myY+((int)(Math.random()*7))-3;
 }
}
 }
