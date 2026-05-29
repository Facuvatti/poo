class Movil {
  PVector pos, vel;
  int r = 40;
  int fila, columna;
  color colorCoche = color(255);

  Movil(float x, float y, int f, int c) {
    pos = new PVector(x, y);
    fila = f;
    columna = c;

    vel = new PVector(random(-1.5, 1.5), random(-1.5, 1.5));

  }

  void mover() {
    pos.add(vel);
    contener();
  }

  void mostrar() {
    fill(colorCoche);
    stroke(255);
    strokeWeight(2);
    ellipse(pos.x, pos.y, r, r);
    fill(255);
  }

  void contener() {
    float izquierda = margen + columna * anchoCelda;
    float derecha = izquierda + anchoCelda;
    float arriba = margen + fila * altoCelda;
    float abajo = arriba + altoCelda;
    if (pos.x - r/2 < izquierda || pos.x + r/2 > derecha) {
      pos.sub(vel);
      vel.x *= -1;
      pos.add(vel);
    }
    if (pos.y - r/2 < arriba || pos.y + r/2 > abajo) {
      pos.sub(vel);
      vel.y *= -1;
      pos.add(vel);
    }
  }
}

int filas = 3;
int columnas = 2;
int totalLugares = filas * columnas;

Movil[][] estacionamiento;

float anchoCelda;
float altoCelda;
int margen = 50;

void setup() {
  size(800, 600);

  anchoCelda = (width - 2 * margen) / columnas;
  altoCelda = (height - 2 * margen) / filas;

  estacionamiento = new Movil[filas][columnas];

  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      float x = margen + j * anchoCelda + anchoCelda/2;
      float y = margen + i * altoCelda + altoCelda/2;

      estacionamiento[i][j] = new Movil(x, y, i, j);
    }
  }
}

void draw() {
  background(50);

  dibujarGrilla();

  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      estacionamiento[i][j].mover();
      estacionamiento[i][j].mostrar();
    }
  }
}

void dibujarGrilla() {
  stroke(100);
  strokeWeight(2);
  noFill();

  for (int i = 0; i <= filas; i++) {
    line(margen, margen + i * altoCelda,
         margen + columnas * anchoCelda, margen + i * altoCelda);
  }

  for (int j = 0; j <= columnas; j++) {
    line(margen + j * anchoCelda, margen,
         margen + j * anchoCelda, margen + filas * altoCelda);
  }

  fill(255);
  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      float x = margen + j * anchoCelda + 5;
      float y = margen + i * altoCelda + 20;
    }
  }
}
