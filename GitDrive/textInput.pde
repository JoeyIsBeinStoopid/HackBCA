String textInput(String text, String saveName, boolean enter) {
  String[] texts = new String[1];
  texts[0] = text;
  if (key != CODED) {
    switch(key) {
    case BACKSPACE:
      texts[0] = texts[0].substring(0, max(0, texts[0].length()-1));
      break;
    case TAB:
      texts[0] += "    ";
      break;
    case ENTER:
    case RETURN:
      // comment out the following two lines to disable line-breaks
      if (enter) {
        texts[0] += "\n";
      }
      break;
    case ESC:
    case DELETE:
      break;
    case CONTROL:
      saveStrings(saveName+".txt", texts);
      break;
    default:
      texts[0] += key;
    }
  }
  return texts[0];
}

void textDisplay(String text, int x, int y) {
  text(text+(frameCount/10 % 2 == 0 ? "_" : ""), x, y);
}

