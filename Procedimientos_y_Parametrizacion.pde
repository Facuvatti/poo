void setup(){
size(800,600);
background(0,120,255);
}
void paisaje(int x, int y, int ancho, int alto){
  ancho = ancho + x;
  alto = alto + y;
  stroke(255);
  strokeWeight(4);
  fill(255,255,0);
  circle(ancho/2,alto/4,(ancho*0.1)+(alto*0.1));
  noStroke();
  fill(0,150,255); // 
  rect(0,alto/2,ancho,alto);
  fill(44,176,55); // verde
  rect(0,(alto/3)*2,ancho,alto);
}
void draw(){
    if(mousePressed) paisaje(mouseX,mouseY,200,100);
}
