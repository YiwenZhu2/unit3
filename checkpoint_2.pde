color red = #FF030B;
color purple = #5A03FF;
color blue = #03E8FF;
color lemon = #D0FF03;
color orange = #FF7D03;
color white = #FFFFFF;
int selected_color;

void setup(){
size(800,700);
strokeWeight(5);
stroke(0);
selected_color = white;
}

void draw(){
    
background(255);

detect(100,200,100,200);
fill(purple);
square(100,100,100);
 
detect(100,200,300,400);
fill(blue);
square(100,300,100);

detect(100,200,500,600);
fill(lemon);
square(100,500,100);
stroke(0);

fill(selected_color);
square(300,100,400);

}
void detect(int x1,int x2,int y1,int y2){
if(mouseX>x1 && mouseX<x2 && mouseY>y1 && mouseY<y2){
stroke(255);
}
else{
stroke(0);
}
}


void mouseReleased() {
if(mouseX>100 && mouseX<200 && mouseY>100 && mouseY<200){
  selected_color = purple;
}
if(mouseX>100 && mouseX<200 && mouseY>300 && mouseY<400){
  selected_color = blue;
}
if(mouseX>100 && mouseX<200 && mouseY>500 && mouseY<600){
  selected_color = lemon;
}

}
