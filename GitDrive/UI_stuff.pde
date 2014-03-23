class UI {
  int state;
  int startState = 0;
  int docState = 1;
  String username;
  boolean shouldLoad;

  UI() {
    username = "";
    shouldLoad = false;
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

  void loadStartScreen() {
    state = startState;
    shouldLoad = false;
  }

  void startScreen() {
    fill(255);
    rectMode(CENTER);
    rect(width/2, height/2, 200, 100);
    fill(0);
    textAlign(CENTER);
    textSize(20);
    text("Connect to server", width/2, height/2);
    if (buttonCenter(width/2, height/2, 200, 100)) {
      if (username.length() > 0) {
        loadDocScreen();
      } 
      else {
        fill(255, 0, 0);
        textAlign(CENTER);
        text("Please choose a username.", width/2, height/2 - 100);
      }
    }
    fill(255);
    textSize(20);
    textAlign(CORNER);
    textDisplay("Please choose a username before connecting: \n" + username, width/2 - 215, height/2 - 125);
  }


  void loadDocScreen() {
    state = docState;
    shouldLoad = true;
  }

  void docScreen() {
    bc.run();
  }

  void keyPress() {
    switch(state) {
    case 0:
      username = textInput(username, "username", false);
      break;
    case 1: 
      bc.BString[0] = textInput(bc.BString[0], "", true);
      bc.JClient.write(bc.BString[0]);
      break;
    }
  }
}

