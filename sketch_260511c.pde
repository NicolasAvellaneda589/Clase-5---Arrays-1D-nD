int cols = 10;
int rows = 10;
int tam = 50;
boolean[][][] laberinto;

void setup() {
  size(500, 500);


  laberinto = new boolean[cols][rows][6];


  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {

      for (int k = 0; k < 6; k++) {

 
        laberinto[i][j][k] = random(1) > 0.5;
      }
    }
  }
}

void draw() {
background(255);
stroke(0);

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {

      int x = i * tam;
      int y = j * tam;

      if (laberinto[i][j][0]) {
        line(x, y, x + tam, y);
      }
      if (laberinto[i][j][1]) {
        line(x + tam, y, x + tam, y + tam);
      }
      if (laberinto[i][j][2]) {
        line(x, y + tam, x + tam, y + tam);
      }
      if (laberinto[i][j][3]) {
        line(x, y, x, y + tam);
      }
      if (laberinto[i][j][4]) {
        line(x, y, x + tam, y + tam);
      }

      if (laberinto[i][j][5]) {
        line(x + tam, y, x, y + tam);
      }
    }
  }
}
