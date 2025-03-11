


color red = #FF030B;
color purple = #5A03FF;
color blue = #03E8FF;
color lemon = #D0FF03;
color orange = #FF7D03;
color white = #FFFFFF;


float sliderX;
float shade;




void setup() { 
  size(500,500);
  
  sliderX = 250;
  shade = 0;
}



void draw() { 
  shade = map(sliderX,50,450,0,255);
  background(shade);
    strokeWeight(10);
    stroke(lemon);
    line(50,250,450,250);
    strokeWeight(5);
    stroke(orange);
    fill(blue);
    circle(sliderX, 250, 50);
} 



void mouseDragged() { 
  controlSlider();
}



void mousePressed() {
  controlSlider();
}



void controlSlider() { 
  if (mouseX < 450 && mouseX > 50 && mouseY < 285 && mouseY > 215) {
    sliderX = mouseX;
  }
  
} 
