/* KANYE WEST - THE LIFE OF PABLO Cover Generator 
 by Jocelyn Neumann
 press mouse to draw text
 press space to change text
 arrow key up: big text
 arrow key down: small text
 press any other key to reset 
 
 */

String [] albumNames = {"THE LIFE OF PABLO", "WHICH/ONE", "IMMA LET U FINISH", "SO HELP ME GOD"};
int strCount = 0;                         //counts through the string
PImage img;                               //load image
PFont helv;                               //load helvetica
int fontSize = 17;                 

void setup() {
  size(600, 600);
  background(245, 139, 87);
  frameRate(15);
  helv = createFont("Helvetica", 17);
}

void keyPressed() {                        
  if (key == ' ') {                              //space to change text
    strCount += 1;
    if (strCount == albumNames.length) {
      strCount = 0;
    }
    println("Text: " + albumNames[strCount]);
  } else if (keyCode == UP) {                    //up arrow for big text
    fontSize = 30;
    println("fontSize: " + fontSize);
  } else if (keyCode == DOWN) {                  //down arrow for small text
    fontSize = 17;
    println("fontSize: " + fontSize);
  } else {                                       //any other key for reset
    background(245, 139, 87);
    println("RESET");
  }
}

void draw() {
  fill(0);
  if (mousePressed) {
    textFont(helv, fontSize);
    text(albumNames[strCount], mouseX, mouseY);      //actual draw function
  }

  img = loadImage("lifeofpablo.jpg");                //image 
  img.resize(160, 0);
  image(img, 90, 430);
}