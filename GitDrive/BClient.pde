class BClient {
  Client JClient;
  String JText;
  int x;
  String[] BString = new String[1];
  PFont font;
  int Joldtime;
  int Jcurrenttime; 
  BClient() {
    JText= "";
    BString[0] = "";
    font = createFont("Helvetica", 18);
  }

  void run() {
    fill(100);
    textSize(16);
    textDisplay(BString[0], 85, 85);
    Jcurrenttime=millis();
    if (JClient.available() > 0) {
      Joldtime = millis();
      BString[0] = JClient.readString();
    }
    //println(BString[0]);
  }
}

