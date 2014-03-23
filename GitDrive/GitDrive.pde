UI ui;

void setup()
{
  size(500, 500);
  ui = new UI();
}

void draw()
{
  background(0);
  ui.display();
}

void keyPressed() {
  ui.keyPress();
}

