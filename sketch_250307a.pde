color white = #FFFFFF;
color black = #000000;
float thickness;
float sliderX;

void setup(){
size(800,600);
strokeWeight(5);
stroke(white);
fill(white);
sliderX = 400;
thickness = 0;
}
void draw(){
background(0);
thickness = map(sliderX,100,700,0,15);
strokeWeight(thickness);
line(100,300,700,300);
circle(sliderX,300,50);
}
void mouseDragged(){
controlSlider();
}
 
