import processing.net.*;
BClient bc;
UI ui;
void setup()
{
  size(500, 500);
  ui = new UI();
  bc = new BClient();
  ui.loadStartScreen();
}

void draw()
{
  background(0);
  ui.display();
  if (ui.shouldLoad) {
    bc.JClient = new Client(this, "127.0.0.1", 5204);
    ui.shouldLoad = false;
  }
}

void keyReleased() {
  ui.keyPress();
}

