int pos, sentido, count;


void setupUno () {
  pos = 25;
  sentido = 1;
  count=0;
}




void drawUno () {
  background (0, 255, 0);
  noStroke ();
  fill (150, 50, 180);
  ellipse (pos, height/2, 50, 50);
  
  count++;
  if (count>= 300) {
  pantalla = 2;
  count=0;
  }
  
  pos = pos + sentido;
    if (pos >= width -20 || pos <= 20) {
      sentido = sentido * (-1);
    }
}