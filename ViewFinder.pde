class viewFinder {
  void init() {
    strokeWeight(2);
    noFill();
    stroke(50);
    ellipse(780, 360, 4, 4);
    ellipse(780, 240, 4, 4);
    ellipse(780, 480, 4, 4);
    ellipse(575, 360, 4, 4);
    ellipse(985, 360, 4, 4);
    ellipse(905, 290, 4, 4);
    ellipse(655, 290, 4, 4);
    ellipse(905, 430, 4, 4);
    ellipse(655, 430, 4, 4);
    rectMode(CENTER);
    square(780, 360, 40);
    rect(780, 240, 30, 20);
    rect(780, 480, 30, 20);
    rect(575, 360, 20, 30);
    rect(985, 360, 20, 30);
    rect(655, 290, 20, 30);
    rect(905, 290, 20, 30);
    rect(655, 430, 20, 30);
    rect(905, 430, 20, 30);
    ellipseMode(CENTER);
    ellipse(780, 360, 140, 140);
  }
}
