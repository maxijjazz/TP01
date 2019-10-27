//Librairies
import processing.video.*;
import processing.sound.*;
import java.util.Iterator;

//Initialisation des élément hardware pour l'intéreactivité, par défaut elles sont "off"
boolean isV1Active = false;
boolean isV2Active = false;
boolean isV3Active = false;
boolean isV4Active = false;
boolean cliquer = true;
boolean loading = false;
boolean animFin = false;
boolean isMousePressedLeft = false;
boolean LdPoint1 = false;
boolean LdPoint2 = false;
boolean LdPoint3 = false;
boolean invert = false;

//Définition des classes
UserInterface u;
Logo l;
Viewer1 v1;
Viewer2 v2;
Viewer3 v3;
Viewer4 v4;
SoundEffects se;
viewFinder s;
PApplet app;

//variables
float alpha = 127.0f;


//Création des classes et settings de base
void setup() {

  app = this;

  size(1280, 720);
  frameRate(24);

  u = new UserInterface();
  l = new Logo();
  v1 = new Viewer1();
  v2 = new Viewer2();
  v3 = new Viewer3();
  v4 = new Viewer4();
  se = new SoundEffects();
  s = new viewFinder();


  //background
  background(62, 62, 62);
  rectMode(CENTER);
  fill(0);
  rect(780, 360, 669, 444);

  //initialisation des classes
  v1.init();
  v2.init();
  v3.init();
  v4.init();
  se.init();
  l.init();
  u.init();
}

void draw() {

  //Permet d'altérner entre les quatre scènes
  if (isV1Active)
    v1.display();
  if (isV2Active)
    v2.display();
  if (isV3Active )
    v3.display();
  if (!isV3Active)
    v3.videoStop();
  if (isV4Active)
    v4.display();

  //Exposure
  rectMode(CENTER);
  noStroke();
  fill(0, alpha);
  rect(780, 360, 675, 450);

  //dessin des classes
  u.display();
  l.display();
  s.init();
}

void mousePressed() {
  if (mouseButton == LEFT)
    isMousePressedLeft  = true;
}

void mouseReleased() {
  if (mouseButton == LEFT)
    isMousePressedLeft  = false;
}

void keyPressed() {
  //Exposure
  if (key == CODED) {
    if (keyCode == UP) {
      se.makeSound2();
      alpha -= 10.0f;
    } else if (keyCode == DOWN) {
      se.makeSound2();
      alpha += 10.0f;
    }
  } else {
    alpha = 50.0f;
  }
  if (key == 'v') {
    invert = true;
  }

  //Scenes
  if (animFin) {
    switch(key) {
    case '1':
      se.makeSound();
      isV1Active = !isV1Active;
      isV2Active = false;
      isV3Active = false;
      isV4Active = false;
      v3.play = false;
      break;
    case '2':
      se.makeSound();
      isV2Active = !isV2Active;
      isV1Active = false;
      isV3Active = false;
      isV4Active = false;
      v3.play = false;
      break;
    case '3':
      se.makeSound();
      isV3Active = !isV3Active;
      isV1Active = false;
      isV2Active = false;
      isV4Active = false;
      v3.play = true;
      break;
    case '4':
      se.makeSound();
      v3.play = false;
      isV4Active = !isV4Active;
      isV1Active = false;
      isV2Active = false;
      break;
    }
  }
}

void keyReleased() {
  if (key == 'v')
    invert = false;
}
