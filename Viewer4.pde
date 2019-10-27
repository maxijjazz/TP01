class Viewer4 {

  int count = 500;
  int totalFrames = 120;
  int counter;
  PImage bg;
  int y;
  int type;

  boolean isPSActive1 = false;

  ParticleSystem ps1;

  void init()
  {

    size(1280, 720);
    frameRate(60);
    background(62, 62, 62);

    bg = loadImage("forest.jpg");
    bg.resize(669, 444);

    type = ParticleSystem.PARTICLE_TYPE_LUCIOLE;
    ps1 = new ParticleSystem(count, type);

    isPSActive1 = true;
  }

  void display()
  {
    image(bg, 780, 360);

    if (y > height)

      fade(32);

    if (isPSActive1)
      ps1.update();
  }

  void fade(float decay)
  {
    rectMode(CORNER);
    noStroke();
    image(bg, decay, decay);
    rect(0, 0, width, height);
  }
}
