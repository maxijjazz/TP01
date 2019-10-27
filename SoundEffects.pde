class SoundEffects {

  String file1 = "click1.wav";
  String file2 = "click2.wav";

  SoundFile sound1;
  SoundFile sound2;

  void init() {
    sound1 = new SoundFile(app, file1);
    sound2 = new SoundFile(app, file2);
  }

  void makeSound() {
    sound1.play();
  }

  void makeSound2() {
    sound2.play();
  }
}
