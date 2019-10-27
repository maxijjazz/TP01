class ParticleLuciole extends Particle {
  
  final static float probabilitySpawn = 0.12f;
      
  float amplitude;
  float frequence;
  float Yinit;
  float a = random(4, 6);
  
  ParticleLuciole() {
    super();

    colorDiffuse = #53933E;

    lifetime = 5.0f;
  }

  void init() {
    super.init();
    
    // determine un nombre aleatoire entre 2pi/3 et 2pi. Cree une variable aleatoire avec une intervalle.
    frequence = ((TWO_PI)/6 + random(0.0f, 1.0f) * (4 * PI)/3)/1000.0f;
    amplitude = random(0.0f, 10.0f);
    
    // Definir la position initiale Y d une particule
    Yinit = ps.origin.y + random(0.0f, 1.0f) * ps.space.y - ps.space.y / 2.0f;

    ps.space.x = 660;
    ps.space.y = 440;

    position.x = ps.origin.x + random(0.0f, 1.0f) * ps.space.x - ps.space.x / 2.0f;
    
    // Initialiser la variable Y et la variable initiale de Y. 
    position.y = Yinit;
  }

  void update() {
    super.update();
    position.y = amplitude * cos(frequence * timeActive) + Yinit;
  }

  void render() {
    fill(colorDiffuse, 255);
    ellipse(position.x, position.y, a, a);
  }
}
