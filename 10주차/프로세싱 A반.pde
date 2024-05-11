int x1, x2, x3, x1sp, x2sp, x3sp;
boolean val1, val2, val3 = false;

void setup() {
  size(800, 600);

  x1=50;
  x2=50;
  x3=50;
  x1sp = 4;
  x2sp = 5;
  x3sp = 6;
}

void draw() {
  background(255);

  x1+=x1sp;
  x2+=x2sp;
  x3+=x3sp;

  line(0, height*1/3, width, height*1/3);
  line(0, height*2/3, width, height*2/3);

  if ( val1 == true) {
    fill(255, 100, 100);
    rect(width*6/8, 0, width, height*1/3);
    circle(x1, height*1/6, 100);
    for (int a = 0; a<height*1/3; a+=20) {
      line(0, a, width*6/8, a);
    }
  } else {
    fill(100, 255, 100);
    rect(width*6/8, 0, width, height*1/3);
  }

  if (x1>width*6/8-50) {
    x1sp*=-1;
  }
  if (x1<50) {
    x1sp*=-1;
  }


  if ( val2 == true) {
    fill(255, 100, 100);
    rect(width*6/8, height*1/3, width, height*1/3);
    circle(x2, height*3/6, 100);
    for (int b = height*1/3; b<height*2/3; b+=20) {
      line(0, b, width*6/8, b);
    }
  } else {
    fill(100, 255, 100);
    rect(width*6/8, height*1/3, width, height*1/3);
  }

  if (x2>width*6/8-50) {
    x2sp*=-1;
  }
  if (x2<50) {
    x2sp*=-1;
  }

  if ( val3 == true) {
    fill(255, 100, 100);
    rect(width*6/8, height*2/3, width, height*1/3);
    circle(x3, height*5/6, 100);
  } else {
    fill(100, 255, 100);
    rect(width*6/8, height*2/3, width, height*1/3);
  }

  if (x3>width*6/8-50) {
    x3sp*=-1;
  }
  if (x3<50) {
    x3sp*=-1;
  }
}

void mousePressed() {
  if (mouseX>width*6/8 && mouseY>0 && mouseY<height*1/3) {
    if (val3==true) {
      val1 = !val1;
    }
  }

  if (mouseX>width*6/8 && mouseY>0 && mouseY<height*2/3 && mouseY>height*1/3) {
    if (val3==true) {
      val2 = !val2;
    }
  }
  if (mouseX>width*6/8 && mouseY>0 && mouseY<height*3/3 && mouseY>height*2/3) {
    val3 = !val3;
    if (val3==false) {
      val1=false;
      val2=false;
    }
  }
}
