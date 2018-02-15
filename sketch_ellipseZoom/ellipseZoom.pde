int count = 5;    //ellipse size
int count2 = 10;  //raster abstand

void setup() {
  size(1000, 600);
}

void draw() {
  background(#A0A0A0);
  println (count);
  
  for (int i = mouseX; i < 900; i = i+count2) {
  for (int j = mouseY; j < 500; j = j+count2) {
       
    //seitenrahmen
        while (i<100) {i=100;}
        while (j<100) {j=100;}

        noStroke();
        fill(#F2EBEB);
        ellipse (i, j, count, count);
        
        //second ellipse when zooming in 
        if (count>50){
          fill(#DDBCFF);
          ellipse (i,j,count-50,count-50);
        }
        
        //third ellipse when zooming in 
        if (count>190){
          fill(#FFEDBC);
          ellipse (i,j,count-200,count-200);
        }
        
        //4th ellipse when zooming in 
        if (count>400){
          fill(#FA747F);
          ellipse (i,j,count-400,count-400);
        }
      }
    }

//click=ellipse bigger
  if (mousePressed) {
    count += 10;
    count2 += 10;
  }

//key or too big=reset size
  if (keyPressed || (count>1635)){
    count = 5;
    count2 = 10;
  }
  
}
