int cantidad = 20;
float[] barras;
float anchoBarra;

void setup() {
  size(800, 600);

  barras = new float[cantidad];

  anchoBarra = width / float(cantidad);

  for (int i = 0; i < cantidad; i++) {
    barras[i] = height / 2;
  }
}

void draw() {
  background(30);
  int indice = int(mouseX / anchoBarra);
  
  if (indice >= 0 && indice < cantidad) {
    float nuevaAltura = map(mouseY, height, 0, 0, height);
    
    nuevaAltura = constrain(nuevaAltura, 0, height);

    barras[indice] = nuevaAltura;
  }

  for (int i = 0; i < cantidad; i++) {

    float x = i * anchoBarra;

    fill(200);
    rect(x, height - barras[i], anchoBarra - 2, barras[i]);
  }
}
