float rotM = 0;
float rotH = 0;

int lastMinute = 0;
int lastSecond = 0;
int lastHour = 0;

float lengthHourHand = 100;

void setup() {
  size(720, 480, P2D);
}

void draw() {
  background(0);

  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rotM));
  rect(-75, -75, 150, 150);
  popMatrix();

  int s = second();
  int m = minute();
  int h = hour();

  if (m != lastMinute) {
    rotM += 6;
    lastMinute = m;
  }


  ellipse(600, height/2, s, s);
  
  if (h != lastHour) {
    rotH = ((float) h / 12) * TWO_PI;  
    lastHour = h;
  }
  
  pushMatrix();
  translate(width/6, height/2);
  rotate(rotH);
  stroke(255);
  line(0, 0, 0, -lengthHourHand);
  popMatrix();

}
