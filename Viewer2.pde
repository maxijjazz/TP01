class Viewer2 {
  PImage img1;
  PImage img2;
  PImage img3;

  void init() {
    img1 = loadImage("testPhoto2.jpg");
    imageMode(CENTER);
    img1.resize(669, 444);
    img2 = loadImage("testPhoto2.jpg");
    img2.resize(669, 444);
    img1.filter(BLUR, 5);
    img3 = loadImage("testPhoto2.jpg");
    img3.resize(669, 444);
    img3.filter(INVERT);
  }

  void display() {
    image(img1, 780, 360);
    if (isMousePressedLeft) {
      image(img2, 780, 360);
    }
    if (invert) {
      image(img3, 780, 360);
    }
  }
}
