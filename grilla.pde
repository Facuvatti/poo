int cantColumnas = 10;
int cantFilas = 10;
void setup(){
  size(800,500);
}
void draw(){
  for(int i=0;i<cantColumnas;i++){
    for(int j=0;j<cantFilas;j++){
      rect((width/cantColumnas)*i,(height/cantFilas)*j,width/cantColumnas,height/cantFilas);
    }
  }
}
