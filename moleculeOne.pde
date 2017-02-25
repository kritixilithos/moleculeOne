import java.util.*;

Line l1, l2, l3, l4, l5, l6, l7, l8, l9, l10, l11, l12, l13, l14, l15, l16;

float[]currRot = new float[3];

float rot=0;

boolean cyan   = false;
boolean yellow = false;
boolean pink   = false;
boolean grey   = false;
boolean[]colors={cyan, yellow, pink, grey};

final color CYAN   = #00ffff;
final color YELLOW = #ffff00;
final color PINK   = #ff00ff;
final color GREY   = color(175);
color[]COLORS      = {CYAN, YELLOW, PINK, GREY};
//COLORS.add(4, new Integer(4));

char lastColourKey = 0;
char lastRotKey    = 0;

void SLimoneneSetup() { 
  float angle = PI/3;
  float len = 100;
  l1 = new Line(100, 0, 0);
  l1.v.setMag(len);
  l2 = new Line(l1.v);
  l2.rotateAtAround(angle, l1.v.cross(new PVector(0, 100, 0)));
  l2.v.setMag(len);
  l7 = new Line(l2.v);
  l7.rotateAtAround(-2*PI/3, new PVector(0, 0, 100));
  l7.v.setMag(len);
  l3 = new Line(l2.v);
  l3.rotateAtAround(angle, l1.v.cross(l2.v));
  l3.v.setMag(len);
  l4 = new Line(l3.v);
  l4.rotateAtAround(angle, l2.v.cross(l3.v));
  l4.v.setMag(len);
  l5 = new Line(l4.v);
  l5.rotateAtAround(angle, l3.v.cross(l4.v));
  l5.v.setMag(len);
  l8 = new Line(l5.v);
  l8.rotateAtAround(radians(135), new PVector(100, 0, 0));
  l8.v.setMag(len);
  l10 = new Line(l8.v);
  l10.rotateAtAround(radians(135-90), new PVector(0, 0, 100));
  l10.v.setMag(len);
  l11 = new Line(l8.v);
  l11.rotateAtAround(radians(-135+90), new PVector(0, 0, 100));
  l11.v.setMag(len);
  l9 = new Line(l5.v);
  l9.rotateAtAround(radians(-135), new PVector(100, 0, 0));
  l9.v.setMag(len);
  l6 = new Line(l5.v);
  l6.rotateAtAround(angle, l4.v.cross(l5.v));
  l6.v.setMag(len);
}

void SLimoneneDraw() {
  fill(50);
  float o=3;
  stroke(0);
  sphere();
  stroke(chooseColor(CYAN));
  l1.display();

  translate(l1.v);
  sphere();
  l7.display();
  pushMatrix();
  translate(l7.v);
  sphere();
  popMatrix();
  pushMatrix();
  translate(-o, o, 0);
  stroke(chooseColor(YELLOW));
  l2.display();
  translate(2*o, -2*o, 0);
  l2.display();
  popMatrix();

  translate(l2.v);
  sphere();
  stroke(chooseColor(YELLOW));
  l3.display();

  translate(l3.v);
  sphere();
  stroke(chooseColor(YELLOW));
  l4.display();

  translate(l4.v);
  sphere(25, color(255, 255/2, 0));
  stroke(chooseColor(CYAN));
  l5.display();
  stroke(chooseColor(PINK));
  l8.display();
  pushMatrix();
  translate(l8.v);
  sphere();
  stroke(chooseColor(PINK));
  l10.display();
  pushMatrix();
  translate(l10.v);
  sphere(25, color(0, 255, 255));
  popMatrix();
  pushMatrix();
  translate(-o, o, 0);
  stroke(chooseColor(PINK));
  l11.display();
  translate(2*o, -2*o, 0);
  l11.display();
  translate(l11.v);
  sphere(25, color(255, 255, 0));
  popMatrix();
  popMatrix();
  stroke(chooseColor(GREY));
  l9.display();
  pushMatrix();
  translate(l9.v);
  sphere(10, color(225));
  popMatrix();

  translate(l5.v);
  sphere();
  stroke(chooseColor(CYAN));
  l6.display();
}

/////////////////////////////////////////////////////////////////////////////////////

void RLimoneneSetup() { 
  float angle = PI/3;
  float len = 100;
  l1 = new Line(100, 0, 0);
  l1.v.setMag(len);
  l2 = new Line(l1.v);
  l2.rotateAtAround(angle, l1.v.cross(new PVector(0, 100, 0)));
  l2.v.setMag(len);
  l7 = new Line(l2.v);
  l7.rotateAtAround(-2*PI/3, new PVector(0, 0, 100));
  l7.v.setMag(len);
  l3 = new Line(l2.v);
  l3.rotateAtAround(angle, l1.v.cross(l2.v));
  l3.v.setMag(len);
  l4 = new Line(l3.v);
  l4.rotateAtAround(angle, l2.v.cross(l3.v));
  l4.v.setMag(len);
  l5 = new Line(l4.v);
  l5.rotateAtAround(angle, l3.v.cross(l4.v));
  l5.v.setMag(len);
  l8 = new Line(l5.v);
  l8.rotateAtAround(radians(135), new PVector(100, 0, 0));
  l8.v.setMag(len);
  l10 = new Line(l8.v);
  l10.rotateAtAround(radians(135-90), new PVector(0, 0, 100));
  l10.v.setMag(len);
  l11 = new Line(l8.v);
  l11.rotateAtAround(radians(-135+90), new PVector(0, 0, 100));
  l11.v.setMag(len);
  l9 = new Line(l5.v);
  l9.rotateAtAround(radians(-135), new PVector(100, 0, 0));
  l9.v.setMag(len);
  l6 = new Line(l5.v);
  l6.rotateAtAround(angle, l4.v.cross(l5.v));
  l6.v.setMag(len);
}

void RLimoneneDraw() {
  fill(50);
  float o=3;
  stroke(0);
  sphere();
  pushMatrix();
  stroke(chooseColor(YELLOW));
  translate(-o, o, 0);
  l1.display();
  translate(2*o, -2*o, 0);
  l1.display();
  popMatrix();

  translate(l1.v);
  sphere();
  l7.display();
  pushMatrix();
  translate(l7.v);
  sphere();
  popMatrix();
  stroke(chooseColor(CYAN));
  l2.display();

  translate(l2.v);
  sphere();
  stroke(chooseColor(CYAN));
  l3.display();

  translate(l3.v);
  sphere();
  stroke(chooseColor(CYAN));
  l4.display();

  translate(l4.v);
  sphere(25, color(255, 255/2, 0));
  stroke(chooseColor(YELLOW));
  l5.display();
  stroke(chooseColor(PINK));
  l8.display();
  pushMatrix();
  translate(l8.v);
  sphere(25, color(0));

  pushMatrix();
  stroke(chooseColor(PINK));
  translate(-o, o, 0);
  l10.display();
  translate(2*o, -2*o, 0);
  l10.display();
  popMatrix();

  pushMatrix();
  translate(l10.v);
  sphere(25, color(255, 255, 0));
  popMatrix();

  pushMatrix();
  stroke(chooseColor(PINK));
  l11.display();
  translate(l11.v);
  sphere(25, color(0, 255, 255));
  popMatrix();

  popMatrix();
  stroke(chooseColor(GREY));
  l9.display();
  pushMatrix();
  translate(l9.v);
  sphere(10, color(225));
  popMatrix();

  translate(l5.v);
  sphere();
  stroke(chooseColor(YELLOW));
  l6.display();
}

////////////////////////////////////////////////////////////////////////////////////

void RCarvoneSetup() { 
  float angle = PI/3;
  float len = 100;
  l1 = new Line(100, 0, 0);
  l1.v.setMag(len);
  l12 = new Line(l1.v);
  l12.rotateAtAround(-2*PI/3, new PVector(0, 0, 100));
  l12.v.setMag(len);
  l2 = new Line(l1.v);
  l2.rotateAtAround(angle, l1.v.cross(new PVector(0, 100, 0)));
  l2.v.setMag(len);
  l7 = new Line(l2.v);
  l7.rotateAtAround(-2*PI/3, new PVector(0, 0, 100));
  l7.v.setMag(len);
  l3 = new Line(l2.v);
  l3.rotateAtAround(angle, l1.v.cross(l2.v));
  l3.v.setMag(len);
  l4 = new Line(l3.v);
  l4.rotateAtAround(angle, l2.v.cross(l3.v));
  l4.v.setMag(len);
  l5 = new Line(l4.v);
  l5.rotateAtAround(angle, l3.v.cross(l4.v));
  l5.v.setMag(len);
  l8 = new Line(l5.v);
  l8.rotateAtAround(radians(135), new PVector(100, 0, 0));
  l8.v.setMag(len);
  l10 = new Line(l8.v);
  l10.rotateAtAround(radians(135-90), new PVector(0, 0, 100));
  l10.v.setMag(len);
  l11 = new Line(l8.v);
  l11.rotateAtAround(radians(-135+90), new PVector(0, 0, 100));
  l11.v.setMag(len);
  l9 = new Line(l5.v);
  l9.rotateAtAround(radians(-135), new PVector(100, 0, 0));
  l9.v.setMag(len);
  l6 = new Line(l5.v);
  l6.rotateAtAround(angle, l4.v.cross(l5.v));
  l6.v.setMag(len);
}

void RCarvoneDraw() {
  fill(50);
  float o=3;
  stroke(0);
  sphere();
  stroke(chooseColor(CYAN));
  l1.display();
  pushMatrix();
  translate(-o, o, 0);
  stroke(chooseColor(CYAN));
  l12.display();
  translate(2*o, -2*o, 0);
  l12.display();
  translate(l12.v);
  sphere(25, color(255, 0, 0));
  popMatrix();
  translate(l1.v);
  sphere();
  l7.display();
  pushMatrix();
  translate(l7.v);
  sphere();
  popMatrix();
  pushMatrix();
  translate(-o, o, 0);
  stroke(chooseColor(YELLOW));
  l2.display();
  translate(2*o, -2*o, 0);
  l2.display();
  popMatrix();

  translate(l2.v);
  sphere();
  stroke(chooseColor(YELLOW));
  l3.display();

  translate(l3.v);
  sphere();
  stroke(chooseColor(YELLOW));
  l4.display();

  translate(l4.v);
  sphere(25, color(255, 255/2, 0));
  stroke(chooseColor(CYAN));
  l5.display();
  stroke(chooseColor(PINK));
  l8.display();
  pushMatrix();
  translate(l8.v);
  sphere();
  stroke(chooseColor(PINK));
  l10.display();
  pushMatrix();
  translate(l10.v);
  sphere(25, color(0, 255, 255));
  popMatrix();
  pushMatrix();
  translate(-o, o, 0);
  stroke(chooseColor(PINK));
  l11.display();
  translate(2*o, -2*o, 0);
  l11.display();
  translate(l11.v);
  sphere(25, color(255, 255, 0));
  popMatrix();
  popMatrix();
  stroke(chooseColor(GREY));
  l9.display();
  pushMatrix();
  translate(l9.v);
  sphere(10, color(225));
  popMatrix();

  translate(l5.v);
  sphere();
  stroke(chooseColor(CYAN));
  l6.display();
}

//////////////////////////////////////////////////////////////////////////////////////

void SCarvoneSetup() { 
  float angle = PI/3;
  float len = 100;
  l1 = new Line(100, 0, 0);
  l1.v.setMag(len);
  l2 = new Line(l1.v);
  l2.rotateAtAround(angle, l1.v.cross(new PVector(0, 100, 0)));
  l2.v.setMag(len);
  l7 = new Line(l2.v);
  l7.rotateAtAround(-2*PI/3, new PVector(0, 0, 100));
  l7.v.setMag(len);
  l3 = new Line(l2.v);
  l3.rotateAtAround(angle, l1.v.cross(l2.v));
  l3.v.setMag(len);
  l12 = new Line(l3.v);
  l12.rotateAtAround(-2*PI/3, l1.v.cross(l2.v));
  l12.v.setMag(len);
  l4 = new Line(l3.v);
  l4.rotateAtAround(angle, l2.v.cross(l3.v));
  l4.v.setMag(len);
  l5 = new Line(l4.v);
  l5.rotateAtAround(angle, l3.v.cross(l4.v));
  l5.v.setMag(len);
  l8 = new Line(l5.v);
  l8.rotateAtAround(radians(135), new PVector(100, 0, 0));
  l8.v.setMag(len);
  l10 = new Line(l8.v);
  l10.rotateAtAround(radians(135-90), new PVector(0, 0, 100));
  l10.v.setMag(len);
  l11 = new Line(l8.v);
  l11.rotateAtAround(radians(-135+90), new PVector(0, 0, 100));
  l11.v.setMag(len);
  l9 = new Line(l5.v);
  l9.rotateAtAround(radians(-135), new PVector(100, 0, 0));
  l9.v.setMag(len);
  l6 = new Line(l5.v);
  l6.rotateAtAround(angle, l4.v.cross(l5.v));
  l6.v.setMag(len);
}

void SCarvoneDraw() {
  fill(50);
  float o=3;
  stroke(0);
  sphere();
  pushMatrix();
  translate(-o, o, 0);
  stroke(chooseColor(YELLOW));
  l1.display();
  translate(2*o, -2*o, 0);
  l1.display();
  popMatrix();

  translate(l1.v);
  sphere();
  l7.display();
  pushMatrix();
  translate(l7.v);
  sphere();
  popMatrix();
  stroke(chooseColor(CYAN));
  l2.display();

  translate(l2.v);
  sphere();
  stroke(chooseColor(CYAN));
  l3.display();
  pushMatrix();
  translate(-o, o, 0);
  stroke(chooseColor(CYAN));
  l12.display();
  translate(2*o, -2*o, 0);
  l12.display();
  translate(l12.v);
  sphere(25, color(255, 0, 0));
  popMatrix();

  translate(l3.v);
  sphere();
  stroke(chooseColor(CYAN));
  l4.display();

  translate(l4.v);
  sphere(25, color(255, 255/2, 0));
  stroke(chooseColor(YELLOW));
  l5.display();
  stroke(chooseColor(PINK));
  l8.display();
  pushMatrix();
  translate(l8.v);
  sphere();

  pushMatrix();
  translate(-o, o, 0);
  stroke(chooseColor(PINK));
  l10.display();
  translate(2*o, -2*o, 0);
  l10.display();
  popMatrix();

  pushMatrix();
  translate(l10.v);
  sphere(25, color(255, 255, 0));
  popMatrix();

  pushMatrix();
  stroke(chooseColor(PINK));
  l11.display();
  translate(l11.v);
  sphere(25, color(0, 255, 255));
  popMatrix();

  popMatrix();
  stroke(chooseColor(GREY));
  l9.display();
  pushMatrix();
  translate(l9.v);
  sphere(10, color(225));
  popMatrix();

  translate(l5.v);
  sphere();
  stroke(chooseColor(YELLOW));
  l6.display();
}

//HERE

void setup() {
  size(500, 800, P3D);
  RCarvoneSetup();
}

void draw() {
  standardDraw("R-Carvone");

  RCarvoneDraw();
}

void sphere() {
  noStroke();
  sphere(25, 50);
  stroke(0);
  strokeWeight(3);
}

void sphere(float size, color c) {
  noStroke();
  fill(c);
  sphere(size);
  stroke(0);
  strokeWeight(5);
}

void translate(PVector p) {
  translate(p.x, p.y, p.z);
}
void standardDraw(String moleculeName) {
  background(182, 173, 242);
  directionalLight(146, 146, 146, 0, 0, -1);
  ambientLight(122, 122, 122);

  translate(width/2, height/2-100);

  fill(0);
  textSize(24);
  text(moleculeName, -200, -235);
  
  switch(lastRotKey) {
    case 'a':
      currRot[0] += (2*PI*(mouseX-pmouseX)/width);
      currRot[1] += (2*PI*(mouseY-pmouseY)/width);
      break;
    case 's':
      currRot[1] += (2*PI*(mouseX-pmouseX)/width);
      currRot[2] += (2*PI*(mouseY-pmouseY)/width);
      break;
    case 'd':
      currRot[2] += (2*PI*(mouseX-pmouseX)/width);
      currRot[0] += (2*PI*(mouseY-pmouseY)/width);
      break;
    case 'q':
      currRot[0]=0;
      currRot[1]=0;
      currRot[2]=0;
      break;
  }

  rotateX(currRot[0]);
  rotateY(currRot[1]);
  rotateZ(currRot[2]);
}

color chooseColor(color c) {
  //return YELLOW;/*
  int i = c==CYAN?0:c==YELLOW?1:c==PINK?2:3;
  //println(colors[i]);
  if (colors[i]) {
    if (millis()%1000<500)return c;
    else return color(#0000ff);
  }else{
    return c;
  }//*/
}

void keyTyped() {
	if (key == '.') {
		save("R-carvone.png");
		exit();
	}
  if(key=='y'||key=='c'||key=='p'||key=='g'){
    lastColourKey = key;
  }
  if(key=='a'||key=='s'||key=='d'||key=='q'||key==' ') {
    lastRotKey = key;
  }
  
  println(lastColourKey,lastRotKey);
  switch(lastColourKey) {
    case 'y':
      yellow = !yellow;
      break;
    case 'c':
      cyan = !cyan;
      break;
    case 'p':
      pink = !pink;
      break;
    case 'g':
      grey = !grey;
      break;
  }
  colors[0]=cyan;
  colors[1]=yellow;
  colors[2]=pink;
  colors[3]=grey;
}


/**
(R)-Limonene
                           /
                         l7
                         /
                 C==l1==C
                /        \
              l6         l2
             /             \
             C              C
              \            /
              l5          l3
                \        /
                *C--l4--C
                / \
               l8 l9
              /     \
             C       H
            / \\
          l10 l11
          /     \\
         C       C
*/

/**
(S)-Limonene
                           /
                         l7
                         /
                 C--l1--C
                /        \\
              l6          l2
             /             \\
             C              C
              \            /
              l5          l3
                \        /
                *C--l4--C
                / \
               l8 l9
              /     \
             C       H
            / \\
          l10 l11
          /     \\
         C       C
*/
