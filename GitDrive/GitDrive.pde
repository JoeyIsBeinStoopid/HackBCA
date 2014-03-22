import processing.net.*;
Client JClient;
String JText;
void setup()
{
  size(displayWidth, displayHeight);
  JClient = new Client(this, "168.229.254.13", 5204);
  JText= "";
}

void draw()
{
  if(JClient.available() > 0) {
    JText = JClient.readString();
  }
}
