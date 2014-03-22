import processing.net.*;
Client JClient;
String JText;
int x;
void setup()
{
  size(200,200);
  JClient = new Client(this, "10.31.66.4", 5204);
  JText= "";
}

void draw()
{
  if(JClient.available() > 0) {
    //JText = JClient.readString();
    x = JClient.read();
  }
  background(x);
  println(x);
}
