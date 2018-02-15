//Color Picker
//left click to decrease brightness, right click to increase
//press any key to pause color change

int b = 100;   //brightness
int state = 1; //stop hue change on/off
int x = 0;     //last mousex position
int y = 0;     //last mousey position

void setup() {
  size(600, 600);
  colorMode(HSB, 100);
}

//decrease/increase brightness with left/right click
void mouseClicked() {           
  if (mouseButton == RIGHT) {
    b = b + 10;
  } else if (mouseButton == LEFT) {
    b = b - 10;
  }
  if (b==0) {
    b = 100;
  } else if (b>100) {
    b = 10;
  }
  println("brightness"+b);
}

//pause color change
void keyPressed() {
  if (state==1) {
    state = 0;
  } else if (state==0) {
    state = 1;
  }
  x=mouseX;
  y=mouseY;

  println(state);
}

//mouse to hue & sat
void draw() {
  float h = map(mouseX, 0, 600, 0, 100);  //map mousex to hue
  float s = map(mouseY, 0, 600, 0, 100);  //map mousey to saturation

  color c = g.backgroundColor;            //get color info
  int r = (c >> 16) & 0xFF;  
  int g = (c >> 8) & 0xFF;   
  int bl = c & 0xFF;  
  float br = brightness(c);

  if (state==1) {
    background(h, s, b);
  } else if (state==0) {

    background(map(x, 0, 600, 0, 100), map(y, 0, 600, 0, 100), b);

    
    //pause text & frame
    noStroke();
    fill(1,30);
    rect(0,560,600,44);
    
    fill(100);
    textSize(14);
    text("R: " + r, 230, 580);
    text("G: " + g, 280, 580);
    text("B: " + bl, 330, 580);
    text("Pause", 530, 580);
    text("Brightness " + b + "%", 20, 580);
    
    noFill();
    stroke(100);
    strokeWeight(20);
    rect(0, 0, 600, 600);
  }  
  
  println(mouseX);
  println(mouseY);
} 
