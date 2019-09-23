void setup() {
  size(1920, 1080);
}
int cubeamount = 10;
int cubewidth = 70;
int cubeheight = 70;
int sizeh = 1080/2 - (cubeamount/2)*cubeheight;
int sizew = 1920/2 - (cubeamount/2)*cubewidth;

void draw() { 
  background(255/2);
  for (int n = 0; n < cubeamount; n++) {
    for (int b = 0; b < cubeamount; b++) {
      fill(255/(0.4*(n+b+1)), 255/(0.4*(n+b+1)), 0);
      rect(sizew+cubewidth*n+1.5*sin(random(1, 90)), sizeh+cubeheight*b+1.5*sin(random(1, 90)), cubewidth, cubeheight);
    }
  }
}
