int startX, startY, endX, endY;

void setup()
{
  size (800, 600);
  strokeWeight (3);
}

void draw()
{
  background(3, 35, 85);
  moon();
  spaceship();
  startX = 400;
  startY = 200;
  endX = 400;
  endY = 200;
  while (endY < 600)
  {
    stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    endX = startX + (int)(Math.random()*41-20);
    endY = startY + (int)(Math.random()*25);
    line (startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed()
{
 background(0,255,0);
 redraw();
}

void moon()
{
  stroke(0, 0, 0);
  fill (250, 255, 106);
  ellipse (30, 30, 200, 200);
}

void spaceship()
{
  //body
  fill(255, 239, 88);
  ellipse (400, 185, 80, 25);
  fill (30, 149, 250);
  ellipse (400, 90, 300, 60);
  fill (126, 162, 185);
  ellipse (400, 110, 400, 60);
  fill (197, 220, 234);
  //bottom
  ellipse (400, 150, 220, 69); 
  fill (30, 149, 250);
  ellipse (400, 130, 300, 30);
  //light
  fill (255, 255, 255); 
  ellipse (328, 110, 8, 8);
  ellipse (344, 110, 8, 8);
  ellipse (360, 110, 8, 8);
  ellipse (376, 110, 8, 8);
  ellipse (392, 110, 8, 8);
  ellipse (408, 110, 8, 8);
  ellipse (424, 110, 8, 8);
  ellipse (440, 110, 8, 8);
  ellipse (456, 112, 8, 8);
}
