import processing.video.*;
PImage Soldier;
PImage Tank;
int bulletX;
int bulletY;
int SoldierX;
int SoldierY;
import processing.video.*;
Movie Explosion;

void setup()
{
  size(800,800);   
  Tank=loadImage("Tank.png");
  Soldier=loadImage("Soldier.png");
Explosion = new Movie(this, "Explosion.mov");
  //Explosion.play();
  //Soldier.resize(100,100);
  bulletX=470;
  bulletY=445;
  SoldierX=50;
  SoldierY=300;
  
}
void draw()
{
  background(0,255,0);
  ellipse(bulletX,bulletY,5,5);
  image(Tank,400,400);
  image(Explosion, 50, 450,200,200);
  image(Soldier,SoldierX,SoldierY);
if (keyPressed) {
    if (key == 'b' || key == 'B') {
      bulletX+=-2;
    }
}
if(bulletX==200)
{
  Explosion.play();
  SoldierX=-300;
  bulletX=470;
}
}
void movieEvent(Movie m)
{
   m.read();
}