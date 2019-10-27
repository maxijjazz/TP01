class Logo {
  
  //zoneBoutton
  float x1 = 35;
  float x2 = 285;
  float y1 = 25;
  float y2 = 275;

  //variables de bases
  String filePrefix = "logo";
  String fileExtension = ".jpg";
  int animationFrameCount = 103;
  PImage[] animation;
  String fileName;
  int keyframe;
  int frame = 0;

  SoundFile logoSound;
  SoundFile point1son;
  SoundFile point2son;
  SoundFile point3son;

  void init() {

    frameRate(24);
    imageMode(CENTER);
    animation = new PImage[animationFrameCount];

    for (keyframe = 1; keyframe <= animationFrameCount; ++keyframe)
    {
      fileName = filePrefix + nf(keyframe, 3) + fileExtension;
      animation[keyframe - 1] = loadImage(fileName);
    }

    logoSound = new SoundFile(app, "logoSound.wav");
    point1son = new SoundFile(app, "point1.wav");
    point2son = new SoundFile(app, "point2.wav");
    point3son = new SoundFile(app, "point3.wav");

    keyframe = 0;
  }

  void display() {
    if (mouseX >= x1 && mouseX <= x2 && mouseY >= y1 && mouseY <= y2) {
      if (isMousePressedLeft && !animFin) {
        frame += 1;
        keyframe = frame % animationFrameCount;
        image(animation[keyframe], 160, 150);
        
        cliquer = false;
        loading = true;
        
        if (frame == 1) {
          logoSound.play();
        }
        if (frame == 25) {
          LdPoint1 = true;
          point1son.play();
        }
        if (frame == 55) {
          LdPoint2 = true;
          point2son.play();
        }
        if (frame == 85) {
          LdPoint3 = true;
          point3son.play();
        }
        if (frame >= 102) {
          loading = false;
          animFin = true;
          cliquer = false;
          LdPoint1 = false;
          LdPoint2 = false;
          LdPoint3 = false;
        }
      } else if (!animFin) {
        frame = 0;
        cliquer = true;
        loading = false;
        LdPoint1 = false;
        LdPoint2 = false;
        LdPoint3 = false;
        logoSound.stop();
      }
    }
  }
}
