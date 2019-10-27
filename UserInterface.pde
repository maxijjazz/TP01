class UserInterface {
  PImage logo;
  int left = 40;
  int down = 290;
  PFont texte;
  PFont FontAchievement;

  void init() {
    texte = createFont("DS-DIGI.TTF", 20);
    FontAchievement = createFont("KeepCalm-Medium.ttf", 20);
    logo = loadImage("logo000.jpg");
  }

  void display() {
    //interface
    rectMode(CORNER);
    noStroke();
    fill(95, 95, 95);
    rect(20, 20, 280, 680);
    rectMode(CENTER);
    noFill();
    stroke(0);
    strokeWeight(157);
    rect(780, 360, 780, 524);
    imageMode(CENTER);
    image(logo, 160, 150);

    //instructions du logiciel
    textFont(texte);
    fill(255);
    if (cliquer) {
      text("Cliques sur le logo", left, down);
    } else if (loading) {
      text("chargement", left, down);
      if (LdPoint1) {
        strokeWeight(3);
        stroke(255);
        point(left + 100, down-2);
      } 
      if (LdPoint2) {
        strokeWeight(3);
        stroke(255);
        point(left + 110, down-2);
      }
      if (LdPoint3) {
        strokeWeight(3);
        stroke(255);
        point(left + 120, down-2);
      }
    }
    if (animFin) {
      textFont(FontAchievement);
      fill(255, 118, 255);
      text("Menu Clavier", left, down + 35);
      textFont(texte);
      fill(255, 230, 255);
      text("1-2-3-4: choix de scene", left, down + 70);
      text("haut/bas: exposition", left, down + 110);
      text("Clic: focus", left, down + 150);
      if (invert) {
        fill(100, 190, 255);
        text("v: inverser l'image", left, down + 190);
      } else {
        fill(255, 230, 255);
        text("v: inverser l'image", left, down + 190);
      }
      stroke(255);
      strokeWeight(2);
      line(30, down + 15, 30, 485);
    }
  }
}
