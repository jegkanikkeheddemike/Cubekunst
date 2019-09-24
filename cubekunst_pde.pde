void setup() {
  size(1920, 1080);
}
int cubeamount = 10;                                 //Hvor mange cube's der er på hver række / kolonne
int cubewidth = 70;                                  //Hvor bred cubene er
int cubeheight = 70;                                 //hvor høj cubene er 
int sizeh = 1080/2 - (cubeamount/2)*cubeheight;      //Hvor cubefirkanten begynde Y koordinat
int sizew = 1920/2 - (cubeamount/2)*cubewidth;       //Hvor cubefirkanten begynder X koordinat
float offset;                                        //Hvor meget cubene "hopper"

void draw() { 
  clear();                                           //Baggrund
  for (int n = 0; n < cubeamount; n++) {             //Første "for loop"
    for (int b = 0; b < cubeamount; b++) {           //Andet  "for loop"
      fill(255/(0.4*(n+b+1)), 255/(0.4*(n+b+1)), 0); //farve. Jo højere x og y er, jo lavere er RGB'en Men "Blue" er altid 0 siden det er sådan man laver en gul farve
      offset = random(0-3,3);                        //Bestemmer hvor meget cubene "hopper"
      rect(sizew+cubewidth*n-offset, sizeh+cubeheight*b-offset, cubewidth, cubeheight);    //Tegnet cubene ved startkoordinat + bunner*bredden + tilfældigt
    }
  }
}
