import processing.net.*;
BClient bc;
UI ui;
String codename;
int elchar;
void setup()
{
  size(600, 700);
  ui = new UI();
  bc = new BClient();
  ui.loadStartScreen();
  codename= "";
}

void draw()
{
  background(0);
  println(elchar);
  ui.display();
  if (ui.shouldLoad) {
    bc.JClient = new Client(this, "127.0.0.1", 5204);
    ui.shouldLoad = false;
  }
}

void keyReleased() {
  ui.keyPress();
  if (ui.Jinput==false)
  {
    codename = textInput(codename, "", false) ;
  }
  if (key==ENTER)
  {
    ui.Jinput=true;
    saveStrings(codename, bc.BString );
  }
}

