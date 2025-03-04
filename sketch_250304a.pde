color red = #FF030B;
color purple = #5A03FF;
color blue = #03E8FF;
color lemon = #D0FF03;
color orange = #FF7D03;
color white = #FFFFFF;
int selected_color;

void setup(){
size(800,600);
strokeWeight(5);
stroke(0);
selected_color = white;
}

void draw(){
background(255);

fill(purple);
circle(100,100,100);

fill(blue);
circle(100,300,100);

fill(lemon);
circle(100,500,100);

fill(selected_color);
square(300,100,400);

}
void mouseReleased() {
if(dist(100,100,mouseX,mouseY)<50){
  selected_color = purple;
}
if(dist(100,300,mouseX,mouseY)<50){
  selected_color = blue;
}
if(dist(100,500,mouseX,mouseY)<50){
  selected_color = lemon;
}

}
