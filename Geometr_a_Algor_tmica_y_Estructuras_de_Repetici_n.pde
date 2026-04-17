// Si el ancho (width) es 800 y cant es 10, ¿cuánto vale la variable sepx?
// Respuesta: 80.
// Si cambiamos cant a 20, ¿qué sucede con el valor de sepx y qué efecto visual crees que tendrá en el dibujo?
// Lo que pasa con el valor de sepx es que va a ser más chiquito, entonces va a haber más líneas debido a 
// justamente ese espacio entre cada línea que se redujo. 
// El efecto visual sería como de mayor calidad o detalle, se vería más suave la figura.

int cant = 10; // En cuantas porciones se quiere dividir el ancho y alto.
int sepx, sepy; // Distancia de separación.
void setup() {
  size(800, 600);
  sepx = width/cant; 
  sepy = height/cant;
}

void draw() {
  background(255);
  for (float i = 0; i<cant; i++) {
    // Figura centrada en vertice abajo a la izquierda (x,y) = (0,height)
    line(
      0,        // x1 -> Pegado a pared izquierda. | X MINIMO
      i * sepy, // y1 -> Desde arriba hacia abajo, en cada iteración aumenta la distancia una porción más. (Va de 0 a cant*sepy) | INCREMENTA Y
      i * sepx, // x2 -> Desde la izquierda a la derecha, en cada iteración aumenta la distancia una porción más. (Va de 0 a cant*sepx) | INCREMENTA X
      height    // y2 -> Pegado al piso. | Y MAXIMO
    ); 
    
    // Figura centrada en vertice arriba a la derecha (x,y) = (width,0)
    line(
      width,     // x1 -> Pegado a pared derecha | X MAXIMO
      i * sepy,  // y1 -> Desde arriba hacia abajo (o sea de 0 a cant*sepy) | INCREMENTA Y
      i * sepx,  // x2 -> Desde la izquierda a la derecha, en cada iteración aumenta la distancia una porción más. (Va de 0 a cant*sepx) | INCREMENTA X
      0          // y2 -> Pegado al techo | Y MINIMO
    ); 
    
    // Figura centrada en vertice arriba a la izquierda (x,y) = (0,0)
    line(
      0,                  // x1 -> Pegado a pared izquierda. | X MINIMO
      height - i * sepy,  // y1 -> Desde abajo hacia arriba (o sea de height a 0) BAJA Y
      i * sepx,           // x2 -> Desde la izquierda a la derecha, en cada iteración aumenta la distancia una porción más. (Va de 0 a cant*sepx) INCREMENTA X
      0                   // y2 -> Pegado al techo | Y MINIMO
    );
    
    // Figura centrada en vertice abajo a la derecha (x,y) = (width,height)
    line(
      width,             // x1 -> Pegado a pared derecha | X MAXIMO
      i * sepy,          // y1 -> Desde arriba hacia abajo (o sea de 0 a cant*sepy) INCREMENTA Y
      width - i * sepx,  // x2 -> Desde abajo hacia arriba (o sea de height a 0) BAJA Y
      height             // y2 -> Pegado al piso. | Y MAXIMO
    );
  }
}
