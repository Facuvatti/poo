int colAmount = 20;
int rowAmount = 20;
float[][] distances = new float[colAmount][rowAmount];

void setup(){
  size(1000, 600);
}

void calculateDistances(){
  for(int i = 0; i < colAmount; i++){
    for(int j = 0; j < rowAmount; j++){
      float x = (width / colAmount) * i + (width / colAmount) / 2; // x del medio de la celda
      float y = (height / rowAmount) * j + (height / rowAmount) / 2; // y del medio de la celda
      float distance = dist(mouseX, mouseY, x, y); // distancia entre centro de la celda y el mouse
       distances[i][j] = distance; // guardar la distancia
    }
  }
}


void draw(){
  calculateDistances();
  for(int i = 0; i < colAmount; i++){
    for(int j = 0; j < rowAmount; j++){
      int x = (width / colAmount) * i;
      int y = (height / rowAmount) * j;
      int w = width / colAmount;
      int h = height / rowAmount;
      float maxDistance = dist(0, 0, width+1, height+1);
      float percent = distances[i][j] / maxDistance; // normalizo entre 0 y 1 la distancia
      float grayValue = 255 * (1 - percent); // Obtengo un rango de color en base a que tan lejos está

      fill(grayValue);
      rect(x, y, w, h);
    }
  }  
}
