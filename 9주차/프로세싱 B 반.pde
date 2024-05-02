boolean val1, val2, val3;
int x1, x2, x3, x1sp, x2sp, x3sp;

void setup() {
  size(800, 600);
  x1 = height*1/6;
  x1sp = 3;

  x2 = height*3/6;
  x2sp = 4;

  x3 = height*5/6;
  x3sp = 7;
}

void draw() {
  background(255);
  x1 = x1+x1sp;
  x2 = x2+x2sp;
  x3 = x3+x3sp;

  line(0, height*1/3, width, height*1/3);
  line(0, height*2/3, width, height*2/3);


  if ( val1 == true) {
    fill(0, 200, 0);
    circle(x1, height*1/6, 50);
    rect(width*5/6, 0, width, height*1/3);
    for (int k = 0; k < height*1/3; k+=50) {
      line(0, k, width*5/6, k);
    }
  } else {
    fill(255);
    rect(width*5/6, 0, width, height*1/3);
  }

  if ( val2 == true) {
    fill(0, 200, 0);
    circle(x2, height*3/6, 50);
    rect(width*5/6, height*1/3, width, height*2/3);
    for (int k = height*1/3; k < height*2/3; k+=50) {
      line(0, k, width*5/6, k);
    }
  } else {
    fill(255);
    rect(width*5/6, height*1/3, width, height*2/3);
  }

  if (val3 == true) {
    fill(0, 200, 0);
    circle(x3, height*5/6, 50);
    rect(width*5/6, height*2/3, width, height);
    for (int k = height*2/3; k < height; k+=50) {
      line(0, k, width*5/6, k);
    }
  } else {
    fill(255);
    rect(width*5/6, height*2/3, width, height);
  }

  if (x1<0) {
    x1sp*=-1;
  }
  if (x1>width*5/6) {
    x1sp*=-1;
  }

  if (x2<0) {
    x2sp*=-1;
  }
  if (x2>width*5/6) {
    x2sp*=-1;
  }

  if (x3<0) {
    x3sp*=-1;
  }
  if (x3>width*5/6) {
    x3sp*=-1;
  }
}

void mousePressed() {
  if (mouseX > width*5/6 && mouseX < width && mouseY > 0 && mouseY < height*1/3) {
    val1 = !val1;
  }
  if (mouseX > width*5/6 && mouseX < width && mouseY > height*1/3 && mouseY < height*2/3) {
    val2 = !val2;
  }
  if (mouseX > width*5/6 && mouseX < width && mouseY > height*2/3 && mouseY < height) {
    val3 = !val3;
  }
}
