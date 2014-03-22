import processing.net.*;
Client JClient;
ArrayList<String> JText;
void setup()
{
  size(displayWidth, displayHeight);
  JClient = new Client(this, "168.229.254.13", 5204);
  JText= new ArrayList<String>();
}

void draw()
{
  if(JClient.available() > 0) {
    for(int i = JText.size()-1; i > 0; i--)
    {
    String JDataIn = "";
    JDataIn = JClient.readString();
    JDataIn = JText.get(i);
    }
  }
}
