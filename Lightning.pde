int startX=200;
int startY=100;
int endX=200;
int endY= 100;
int numOrnaments= 10;

void setup()
{
  size(400, 800);
  strokeWeight (3);
  background (255, 211, 249);
}
void draw()
{

  int ballX= (int)(Math.random()*100+150);
  int ballY= (int)(Math.random()*500+150);
  stroke (18, 142, 0);
  while (endY<=750) {
    endY=startY + ((int)(Math.random()*9));
    endX=startX+ ((int)(Math.random()*19)-9);
    line (startX, startY, endX, endY);
    startX=endX;
    startY=endY;

    fill (142, 110, 40);
    rect (180, 720, 40, 80);

    for (int i=0; i<=numOrnaments; i++) {
      fill ((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse (ballX, ballY, 30, 30);
    }

    
  }
  fill (255, 255, 0);
    noStroke();
    triangle (200, 60, 175, 100, 225, 100);
    triangle (175, 75, 200, 115, 225, 75);
}
void mousePressed()
{
  startX=200;
  startY=100;
  endX=200;
  endY=100;
  redraw();
}