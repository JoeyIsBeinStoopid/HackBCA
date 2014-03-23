String textInput(String text, String saveName, boolean enter) {
  String[] texts = new String[1];
  texts[0] = text;

  if (elchar >= 47) {
    if (elchar % 47 == 0) {
      texts[0] += "\n";
    }
  }
  if (key != CODED) {
    switch(key) {
    case BACKSPACE:
      texts[0] = texts[0].substring(0, max(0, texts[0].length()-1));
      elchar--;
      break;
    case TAB:
      texts[0] += "    ";
      elchar += 4;
      break;
    case ENTER:
    case RETURN:
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

boolean buttonCorner(int x, int y, int w, int h) {
  return (mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y+h && mousePressed) ? true : false;
}

boolean buttonCenter(int x, int y, int w, int h) {     
  return (mouseX >= x - w/2 && mouseX <= x + w/2 && mouseY >= y - h/2 && mouseY <= y + h/2 && mousePressed) ? true : false;
}

