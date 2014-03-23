import processing.net.*;
BClient bc;
UI ui;
String codename;
int elchar;
PImage Red_Background,Red;
void setup()
{
  size(600, 700);
  ui = new UI();
  bc = new BClient();
  ui.loadStartScreen();
  codename= "";
  Red_Background= loadImage("SRTJTJFJM.png");
  Red= loadImage("aerginagvjndsglknwgljnarpoihe5tlknfvpojsnv.png");
}

void draw()
{
 
  background(Red_Background);
   if(ui.state == 0)
  {
    //tint(200,150,150,175);
    image(Red,0,0);
  }
  ui.display();
  if (ui.shouldLoad) {
    bc.JClient = new Client(this, "10.31.66.4", 5204);
    ui.shouldLoad = false;
  }
}

void keyPressed() {
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

