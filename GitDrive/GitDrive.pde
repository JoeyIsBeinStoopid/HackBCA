


import processing.net.*;
Client JClient;
String JText;
int x;
String[] BString = new String[1];
String typedText = "your text here";
PFont font;
void setup()
{
  size(200, 200);
  JClient = new Client(this, "10.31.66.4", 5204);
  JText= "";
  BString[0] = "";
  font = createFont("Helvetica", 18);
}

void draw()
{
  background(255);
  fill(100);
  text(BString[0], 100, 100);
  if (JClient.available() > 0) {
    JText = JClient.readString();

    //x = JClient.read();
  }
  //background(x);
  println(JText);
}

void keyReleased() {
  if (key != CODED) {
    BString[0] = BString[0] + key;
    switch(key) {
    case BACKSPACE:
      BString[0] = BString[0].substring(0, max(0, BString[0].length()-1));
      break;
    case TAB:
      BString[0] += "    ";
      break;
    case ENTER:
      saveStrings("yolo.txt", BString);
      println("Saved.");
      break;
    case RETURN:
      // comment out the following two lines to disable line-breaks
      BString[0] += "\n";
      break;
    case ESC:
    case DELETE:
      break;
    default:
      BString[0] += key;
    }
  }
}

