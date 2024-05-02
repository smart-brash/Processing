boolean val1, val2, val3, val4 = false;
int x1, x2, x3, x4, x1sp, x2sp, x3sp, x4sp;

void setup() {
  size(800, 600);
  textMode(CENTER);
  textSize(40);

  x1 = 0;
  x2 = width/2;
  x3 = 0;
  x4 = width/2;

  x1sp = 3;
  x2sp = 4;
  x3sp = 5;
  x4sp = 6;
}

void draw() {
  background(200);

  x1 += x1sp;
  x2 += x2sp;
  x3 += x3sp;
  x4 += x4sp;

  line(0, height/2, width, height/2);
  line(width/2, 0, width/2, height);

  if (val1 == true) {
    fill(0, 200, 0);
    circle(x1, height*3/16, 50);
    rect(0, height*3/8, width/2, height*1/8);
    for (int a = 0; a < height*3/8; a+=50) {
      line(0, a, width/2, a);
    }
  } else {
    fill(200, 0, 0);
    text("Ready!!", width*1/6, height*2/8);
    rect(0, height*3/8, width/2, height*1/8);
  }

  if (val2 == true) {
    fill(0, 200, 0);
    circle(x2, height*3/16, 50);
    rect(width/2, height*3/8, width, height*1/8);
    for (int b = 0; b < height*3/8; b+=50) {
      line(width/2, b, width, b);
    }
  } else {
    fill(200, 0, 0);
    text("Ready!!", width*4/6, height*2/8);
    rect(width/2, height*3/8, width, height*1/8);
  }

  if (val3 == true) {
    fill(0, 200, 0);
    circle(x3, height*11/16, 50);
    rect(0, height*7/8, width/2, height*1/8);
    for (int c = height/2; c < height*7/8; c+=50) {
      line(0, c, width/2, c);
    }
  } else {
    fill(200, 0, 0);
    text("Ready!!", width*1/6, height*6/8);
    rect(0, height*7/8, width/2, height*1/8);
  }

  if (val4 == true) {
    fill(0, 200, 0);
    circle(x4, height*11/16, 50);
    rect(width/2, height*7/8, width, height*1/8);
    for (int d = height/2; d < height*7/8; d+=50) {
      line(width/2, d, width, d);
    }
  } else {
    fill(200, 0, 0);
    text("Ready!!", width*4/6, height*6/8);
    rect(width/2, height*7/8, width, height*1/8);
  }

  if (x1>width/2-25) {
    x1=25;
  }
  if (x3>width/2-25) {
    x3=25;
  }
  if (x2>width-25) {
    x2=width/2+25;
  }
  if (x4>width-25) {
    x4=width/2+25;
  }
}

void mousePressed() {
  if (mouseX>0 && mouseX<width/2 && mouseY>height*3/8 && mouseY<height/2) {
    val1 = !val1;
  }
  if (mouseX>width/2 && mouseX<width && mouseY>height*3/8 && mouseY<height/2) {
    val2 = !val2;
  }
  if (mouseX>0 && mouseX<width/2 && mouseY>height*7/8 && mouseY<height) {
    val3 = !val3;
  }
  if (mouseX>width/2 && mouseX<width && mouseY>height*7/8 && mouseY<height) {
    val4 = !val4;
  }
}
