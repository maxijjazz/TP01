class Viewer3 {
  String file = "foretVideo.mp4";
  PImage foret;
  Boolean play;

  Movie video;

  void init() {
    play = false;
    video = new Movie(app, file);
    video.loop();
  }

  void display()
  {
    if (video.available())
    {
      video.read();
    }
    foret = video.get();
    foret.resize(699, 440);
    image(foret, 780, 360);
    if (play == true)
    {
      video.play();
    }
  }
  void videoStop() {
    video.stop();
  }
}
