class walker{
float tx;
float ty;
float x,xxt;
float y,yyt;

walker(float xr,float yr,float xt,float yt){
  x=xr;
  y=yr;
  tx=0;
  ty=0;
  xxt=xt;
  yyt=yt;
}
void walk(){
fill(random(255),0,0,random(255));
x=map(noise(tx),0,1,0,width);
y=map(noise(ty),0,1,0,height);
tx+=xxt;
ty+=yyt;
ellipse(x,y,10,10);
}
}