 //12/1/17 not much help from others
 Bacteria[] cells;
 void setup()
 {
   size(600,600);
   background(0);
   cells= new Bacteria[25];
   //making 25 apartments with rented to cells
   for(int i=0; i<cells.length; i++){
     cells[i] = new Bacteria();
     //cell for each room
   }
 }
 void draw()
 {
   for(int i = 0; i<cells.length; i++){
     cells[i].show();
     cells[i].draw();
   } 
 }
 class Bacteria
 {
   int myX, myY;
   Bacteria(){
     myX = 250;
     myY = 250;
   }
   void draw(){
     if(mouseX > myX){
         myX = myX + (int)(Math.random()*5-1);
       }
       else if(mouseX < myX){
         myX = myX - (int)(Math.random()*5-1);
       }
     if(mouseY > myY){
        myY = myY + (int)(Math.random()*5-1);
      }
        else if(mouseY < myY){
          myY = myY - (int)(Math.random()*5-1); //speed of cells and movement
        }
   }
   void show(){
     stroke(255);
     fill(0);
     rect(myX-10,myY-10,15,15,15);
     rect(myX+10,myY-10,15,15,15); //cells
     fill(255);
     stroke(0);
     ellipse(mouseX,mouseY,1,1); //where the mouse is, the cells will follow
   }
 }
