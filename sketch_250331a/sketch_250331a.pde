color c1 = #FF0303;
color c2 = #B703FF;
color c3 = #037EFF;
color c4 = #23FF03;
color c5 = #078E6B;
color c6 = #FFFFFF;
color settings = #9EB4AF;
color selected;
float sw;
float master_ball_sw;

float Cats;
PImage master_ball;
PImage Cat;

void setup() {
  size(1200, 1000);
  background(c6);
  selected = c1;
  sw = 400;
  master_ball = loadImage("1.jpg");
  Cat = loadImage("2.jpg");
  master_ball_sw = -1;
  Cats = -1;
  textAlign(CENTER, CENTER);
  textSize(30);
}

void draw() {
  fill(255);
  stroke(0);
  strokeWeight(1);
  fill(settings);
  rect(0, 0, 1200, 200);
  tactile(70, 60, 35);
  fill(c1);
  circle(70, 60, 70);
  tactile(70, 140, 35);
  fill(c2);
  circle(70, 140, 70);
  tactile(160, 60, 35);
  fill(c3);
  circle(160, 60, 70);
  tactile(160, 140, 35);
  fill(c4);
  circle(160, 140, 70);
  tactile(250, 60, 35);
  fill(c5);
  circle(250, 60, 70);
  tactile(250, 140, 35);
  fill(c6);
  circle(250, 140, 70);
  stroke(200);
  line(350, 50, 500, 50);
  circle(sw, 50, 20);
  fill(selected);
  circle(425, 120, (sw - 300) / 5);
  tactileim(550, 10, 210, 80);
  masterBallOnOff();
  rect(550, 10, 210, 80);
  image(master_ball, 555, 10, 198, 74);
  tactileim(550, 105, 210, 180);
  HOnOff();
  rect(550, 105, 210, 80);
  image(Cat, 570, 83, 89 * 1.9, 70 * 1.9);
  tactilere(950, 15, 200, 50);
  strokeWeight(3);
  fill(settings);
  rect(950, 15, 200, 50);
  tactileword(950, 15, 200, 50);
  text("New", 1050, 35);
  tactilere(950, 75, 200, 50);
  strokeWeight(3);
  fill(settings);
  rect(950, 75, 200, 50);
  tactileword(950, 75, 200, 50);
  text("Load", 1050, 95);
  tactilere(950, 135, 200, 50);
  strokeWeight(3);
  fill(settings);
  rect(950, 135, 200, 50);
  tactileword(950, 135, 200, 50);
  text("Save", 1050, 155);
}

void tactilere(int X1, int Y1, int X2, int Y2) {
  if (mouseX > X1 && mouseX < X2 + X1 && mouseY < Y2 + Y1 && mouseY > Y1) {
    stroke(255);
  } else {
    stroke(0);
  }
}

void tactileword(int X1, int Y1, int X2, int Y2) {
  if (mouseX > X1 && mouseX < X2 + X1 && mouseY < Y2 + Y1 && mouseY > Y1) {
    fill(255);
  } else {
    fill(0);
  }
}

void tactileim(int x1, int y1, int x2, int y2) {
  if (mouseX > x1 && mouseX < x2 + x1 && mouseY < y2 + y1 && mouseY > y1) {
    fill(255, 255, 50);
  } else {
    fill(250);
  }
}

void tactile(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(255);
  } else {
    stroke(0);
  }
}

void mouseReleased() {
  if (dist(70, 60, mouseX, mouseY) < 35) {
    selected = c1;
  }
  if (dist(70, 140, mouseX, mouseY) < 35) {
    selected = c2;
  }
  if (dist(160, 60, mouseX, mouseY) < 35) {
    selected = c3;
  }
  if (dist(160, 140, mouseX, mouseY) < 35) {
    selected = c4;
  }
  if (dist(250, 60, mouseX, mouseY) < 35) {
    selected = c5;
  }
  if (dist(250, 140, mouseX, mouseY) < 35) {
    selected = c6;
  }
  controllslider();
  if (mouseX > 550 && mouseY > 10 && mouseX < 760 && mouseY < 90) {
    master_ball_sw *= -1;
    Cats = -1;
  } else if (mouseX > 550 && mouseY > 105 && mouseX < 760 && mouseY < 185) {
    Cats *= -1;
    master_ball_sw = -1;
  }
  if (mouseX > 950 && mouseY > 15 && mouseX < 1150 && mouseY < 65) {
    background(255);
  }
  if (mouseX > 950 && mouseY > 75 && mouseX < 1150 && mouseY < 125) {
    selectInput("Pick an image", "openImage");
  }
  if (mouseX > 950 && mouseY > 135 && mouseX < 1150 && mouseY < 185) {
    selectOutput("Choose a name for your masterpiece", "saveImage");
  }
}

void mouseDragged() {
  if (master_ball_sw < 0 && Cats < 0) {
    strokeWeight((sw - 300) / 5);
    stroke(selected);
    line(pmouseX, pmouseY, mouseX, mouseY);
    controllslider();
  } else {
    if (master_ball_sw > 0) {
      image(master_ball, mouseX - 100, mouseY - 25, sw / 2, sw * 0.37373737373 / 2);
    }
    if (Cats > 0) {
      image(Cat, mouseX - 150, mouseY - 120, sw * 0.8, sw * 0.62921348);
    }
  }
}

void controllslider() {
  if (mouseX > 350 && mouseX < 500 && mouseY < 150) {
    sw = mouseX;
  }
}

void masterBallOnOff() {
  if (master_ball_sw > 0) {
    stroke(255, 0, 0);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(1);
  }
}

void HOnOff() {
  if (Cats > 0) {
    stroke(255, 0, 0);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(1);
  }
}

void saveImage(File data) {
  if (data != null) {
    PImage canvas = get(1, 800, width - 1, height - 800);
    canvas.save(data.getAbsolutePath());
  }
}

void openImage(File data) {
  if (data != null) {
    PImage pic = loadImage(data.getPath());
    image(pic, 0, 200);
  }
}
