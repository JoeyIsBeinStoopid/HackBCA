class UI {
  int state = 0;
  int startState = 0;
  int docState = 1;
  String username;

  UI() {
    username = "";
  }

  void display() {
    switch(state) {
    case 0:
      startScreen();
      break;
    case 1:
      docScreen();
      break;
    }
  }

  void loadStartState() {
    state = startState;
  }

  void startScreen() {
    fill(255);
    rectMode(CENTER);
    rect(width/2, height/2, 200, 100);
    fill(100);
    textAlign(CENTER);
    textSize(20);
    text("Connect to server", width/2, height/2);
    if (buttonCenter(width/2, height/2, 200, 100)) {
      if (username.length() > 0) {
        loadDocScreen();
      } 
      else {
        textAlign(CENTER);
        text("Please choose a username.", width/2, height/2 - 100);
      }
    }
    textSize(20);
    textAlign(CORNER);
    textDisplay("Please choose a username before connecting: \n" + username, width/2 - 215, height/2 - 125);
  }


  void loadDocScreen() {
    state = docState;
  }

  void docScreen() {
  }

  boolean buttonCorner(int x, int y, int w, int h) {
    return (mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y+h && mousePressed) ? true : false;
  }

  boolean buttonCenter(int x, int y, int w, int h) {     
    return (mouseX >= x - w/2 && mouseX <= x + w/2 && mouseY >= y - h/2 && mouseY <= y + h/2 && mousePressed) ? true : false;
  }
}

