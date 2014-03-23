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
    background(255);
    fill(100);
    textSize(18);
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
}

