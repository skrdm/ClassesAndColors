class Kvadrat {
  float x, y, s;
  Kvadrat(float _x, float _y, float _s){
    this.x = _x;
    this.y = _y;
    this.s = _s;
  }
  
  void draw() {
    rect(this.x,this.y,this.s,this.s);
  }
  
  void right(float _s) {
    this.x+=_s;
  }
}

class ColorKvad extends Kvadrat {
  ColorKvad(float _x, float _y, float _s) {
  super(_x, _y, _s);
  }
  
  void Fill(float R, float G, float B) {
  fill(R, G, B);
  }
}

ColorKvad[] c_k_array;

void setup()
{
  size(600,600);
  c_k_array = new ColorKvad[10];
  for(int i=0; i<10; i++){
    c_k_array[i] = new ColorKvad(random(width), random(height), 100.0);
  }
}

void draw()
{
  background(0);
  for(int i=0; i<10; i++){
     c_k_array[i].draw();
     c_k_array[i].right(random(5));
     c_k_array[i].Fill(random(255), random(255), random(255));
     frameRate(10);
  }
}