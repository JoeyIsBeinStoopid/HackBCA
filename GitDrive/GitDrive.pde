


import processing.net.*;
Client JClient;
String JText;
int x;
String[] BString = new String[1];
PFont font;
int Joldtime;
int Jcurrenttime;
void setup()
{
  size(200, 200);
  //JClient = new Client(this, "10.31.66.4", 5204);
  JClient = new Client(this,"127.0.0.1", 5204);
  JText= "";
  BString[0] = "";
  font = createFont("Helvetica", 18);
}

void draw()
{
  background(255);
  fill(100);
  text(BString[0]+(frameCount/10 % 2 == 0 ? "|" : ""), 35, 45);
  Jcurrenttime=millis();
  if (JClient.available() > 0) {
    //BString[0] = "";
       Joldtime = millis();
      BString[0] = JClient.readString();
    //x = JClient.read()
       
  }
  //background(x);
    //JClient.write(BString[0]);
  println(BString[0]);
  //BString[0] = "";
}

void keyReleased() {
  if (key != CODED) {
    switch(key) {
    case BACKSPACE:
      BString[0] = BString[0].substring(0, max(0, BString[0].length()-1));
      break;
    case TAB:
      BString[0] += "    ";
      break;
    case ENTER:
    case RETURN:
      // comment out the following two lines to disable line-breaks
      BString[0] += "\n";
      break;
    case ESC:
    case DELETE:
      break;
    case CONTROL:
      saveStrings("yolo.txt", BString);
      break;
    default:
      BString[0] += key;
    }
    
  }
  JClient.write(BString[0]);
}

