int pantalla;
PFont font;



void setup () {
  size (400, 400);
  frameRate (150);
  pantalla = 0;
  font = loadFont ("Candara-48.vlw");

  setupUno ();
  setupDos ();
  setupTres ();
  setupCuatro ();
  setupCinco ();
}


void draw () {
  background (255);

  if (pantalla == 0) {
    background (255, 255, 255); 
    fill (0);
    text ("Clic para empezar", 20, 20);
  } else if (pantalla ==1) {
    drawUno();
    botones ("Pantalla1", "2", "3", "4", "5");
  } else if (pantalla ==2) {
    drawDos();
    botones ("Pantalla2", "1", "3", "4", "5");
  } else if (pantalla ==3) {
    drawTres();
    botones ("Pantalla3", "1", "2", "4", "5");
  } else if (pantalla ==4) {
    drawCuatro();
    botones ("Pantalla4", "1", "2", "3", "5");
  } else if (pantalla ==5) {
    drawCinco();
    botones ("Pantalla5", "1", "2", "3", "4");
  }
}

void mouseReleased () {
  if (pantalla == 0) {
    pantalla = 1;  
   } else {
     navegador (1, 2, 3, 4);
     
    } 
  } 

void botones (String pantalla, String b1, String b2, String b3, String b4) {
  stroke (0);
  fill (255);
  
  if (mouseX > 275 && mouseX < 275+30 && mouseY >= 365 && mouseY <= 365+30) {
    colorearBoton();
       rect (275, 365, 30, 30);
       
  
  } else if (mouseX > 305 && mouseX < 305+30 && mouseY >= 365 && mouseY <= 365+30) {
    colorearBoton();
       rect (305, 365, 30, 30);
       

  } else if (mouseX > 335 && mouseX < 335+30 && mouseY >= 365 && mouseY <= 365+30) {
    colorearBoton();
       rect (335, 365, 30, 30);
       
       
  } else if (mouseX > 365 && mouseX < 365+30 && mouseY >= 365 && mouseY <= 365+30) {
    colorearBoton();
    rect (365, 365, 30, 30);
    
  }
  
    fill (0);
    text (b1, 288, 385);
    text (b2, 318, 385);
    text (b3, 348, 385);
    text (b4, 378, 385);
    text (pantalla, 20, 20);

}

void navegador (int n1, int n2, int n3, int n4) {
if (mouseX > 275 && mouseX < 275+30 && mouseY >= 365 && mouseY <= 365+30) { //b1
      if (pantalla == 1) {
        pantalla = 2;
      } else if (pantalla == 2) {
        pantalla = 1;
      } else if (pantalla == 3) {
        pantalla = 1;   
      } else if (pantalla == 4) {
        pantalla = 1;
      } else if (pantalla == 5) {
        pantalla = 1;
      }  
      
      
    } else if (mouseX > 305 && mouseX < 305+30 && mouseY >= 365 && mouseY <= 365+30) { //b2
      if (pantalla == 1) {
          pantalla = 3;
      } else if (pantalla == 2) {
          pantalla = 3;
      } else if (pantalla == 3) {
          pantalla = 2;
      } else if (pantalla == 4) {
        pantalla = 2;
      } else if (pantalla == 5) {
        pantalla = 2;
      }  
      
    } else if (mouseX > 335 && mouseX < 335+30 && mouseY >= 365 && mouseY <= 365+30) { //b3
      if (pantalla == 1) {
          pantalla = 4;
      } else if (pantalla == 2) {
          pantalla = 4;
      } else if (pantalla == 3) {
          pantalla = 4;
      } else if (pantalla == 4) {
        pantalla = 3;
      } else if (pantalla == 5) {
        pantalla = 3;
      }  
      
    } else if (mouseX > 365 && mouseX < 365+30 && mouseY >= 365 && mouseY <= 365+30) { //b4
      if (pantalla == 1) {
          pantalla = 5;
      } else if (pantalla == 2) {
          pantalla = 5;
      } else if (pantalla == 3) {
          pantalla = 5;
      } else if (pantalla == 4) {
        pantalla = 5;
      } else if (pantalla == 5) {
        pantalla = 4;
      }
    }    
 }

void colorearBoton () {
  if (mousePressed) {
      fill (255, 0, 0);
    } else {
      fill (255, 255, 0);
    }
  }