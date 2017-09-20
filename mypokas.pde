walker[] run=new walker[10];

void setup(){
  for(int i=0;i<10;i++){
   run[i]=new walker(random(width),random(height),random(0.1),random(0.1));}
 
  size(1280,720);
  background(0);
  fill(0,200);

}

void draw(){
  background(0);
  loadPixels();
  for (int i=0;i<width;i++)
   {
   
    for(int j=0;j<height;j++)
    {
      float bright=random(255);
      pixels[i+j*width]=color(bright);
    }
}
updatePixels();
for(int i=0;i<10;i++)
{
run[i].walk();
}
}