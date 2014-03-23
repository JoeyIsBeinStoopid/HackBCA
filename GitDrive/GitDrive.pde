import processing.net.*;
BClient bc;
void setup()
{
  size(200, 200);
  bc = new BClient();
  bc.JClient = new Client(this, "127.0.0.1", 5204);
}

void draw()
{
  bc.run();
}

void keyReleased() {
  bc.BString[0] = textInput(bc.BString[0], "", true);
  bc.JClient.write(bc.BString[0]);
}

