Line l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15,l16;

float[]currRot = new float[3];

float rot=0;

void SLimoneneSetup(){ 
  float angle = PI/3;
  float len = 100;
  l1 = new Line(100,0,0);
  l1.v.setMag(len);
  l2 = new Line(l1.v);
  l2.rotateAtAround(angle,l1.v.cross(new PVector(0,100,0)));
  l2.v.setMag(len);
  l7 = new Line(l2.v);
  l7.rotateAtAround(-2*PI/3,new PVector(0,0,100));
  l7.v.setMag(len);
  l3 = new Line(l2.v);
  l3.rotateAtAround(angle,l1.v.cross(l2.v));
  l3.v.setMag(len);
  l4 = new Line(l3.v);
  l4.rotateAtAround(angle,l2.v.cross(l3.v));
  l4.v.setMag(len);
  l5 = new Line(l4.v);
  l5.rotateAtAround(angle,l3.v.cross(l4.v));
  l5.v.setMag(len);
  l8 = new Line(l5.v);
  l8.rotateAtAround(radians(135),new PVector(100,0,0));
  l8.v.setMag(len);
  l10 = new Line(l8.v);
  l10.rotateAtAround(radians(135-90),new PVector(0,0,100));
  l10.v.setMag(len);
  l11 = new Line(l8.v);
  l11.rotateAtAround(radians(-135+90),new PVector(0,0,100));
  l11.v.setMag(len);
  l9 = new Line(l5.v);
  l9.rotateAtAround(radians(-135),new PVector(100,0,0));
  l9.v.setMag(len);
  l6 = new Line(l5.v);
  l6.rotateAtAround(angle,l4.v.cross(l5.v));
  l6.v.setMag(len);
}

void SLimoneneDraw() {
  fill(50);
  float o=3;
  stroke(0);
  sphere();
  stroke(0,255,255);
  l1.display();
  
  translate(l1.v);
  sphere();
  l7.display();
  pushMatrix();
  translate(l7.v);
  sphere();
  popMatrix();
  pushMatrix();
  translate(-o,o,0);
  stroke(255,255,0);
  l2.display();
  translate(2*o,-2*o,0);
  l2.display();
  popMatrix();
  
  translate(l2.v);
  sphere();
  stroke(255,255,0);
  l3.display();
  
  translate(l3.v);
  sphere();
  stroke(255,255,0);
  l4.display();
  
  translate(l4.v);
  sphere(25,color(255,255/2,0));
  stroke(0,255,255);
  l5.display();
  stroke(255,0,255);
  l8.display();
  pushMatrix();
  translate(l8.v);
  sphere();
  stroke(255,0,255);
  l10.display();
  pushMatrix();
  translate(l10.v);
  sphere(25,color(0,255,255));
  popMatrix();
  pushMatrix();
  translate(-o,o,0);
  stroke(255,0,255);
  l11.display();
  translate(2*o,-2*o,0);
  l11.display();
  translate(l11.v);
  sphere(25,color(255,255,0));
  popMatrix();
  popMatrix();
  stroke(175,175,175);
  l9.display();
  pushMatrix();
  translate(l9.v);
  sphere(10,color(225));
  popMatrix();
  
  translate(l5.v);
  sphere();
  stroke(0,255,255);
  l6.display();
}

/////////////////////////////////////////////////////////////////////////////////////

void RLimoneneSetup(){ 
  float angle = PI/3;
  float len = 100;
  l1 = new Line(100,0,0);
  l1.v.setMag(len);
  l2 = new Line(l1.v);
  l2.rotateAtAround(angle,l1.v.cross(new PVector(0,100,0)));
  l2.v.setMag(len);
  l7 = new Line(l2.v);
  l7.rotateAtAround(-2*PI/3,new PVector(0,0,100));
  l7.v.setMag(len);
  l3 = new Line(l2.v);
  l3.rotateAtAround(angle,l1.v.cross(l2.v));
  l3.v.setMag(len);
  l4 = new Line(l3.v);
  l4.rotateAtAround(angle,l2.v.cross(l3.v));
  l4.v.setMag(len);
  l5 = new Line(l4.v);
  l5.rotateAtAround(angle,l3.v.cross(l4.v));
  l5.v.setMag(len);
  l8 = new Line(l5.v);
  l8.rotateAtAround(radians(135),new PVector(100,0,0));
  l8.v.setMag(len);
  l10 = new Line(l8.v);
  l10.rotateAtAround(radians(135-90),new PVector(0,0,100));
  l10.v.setMag(len);
  l11 = new Line(l8.v);
  l11.rotateAtAround(radians(-135+90),new PVector(0,0,100));
  l11.v.setMag(len);
  l9 = new Line(l5.v);
  l9.rotateAtAround(radians(-135),new PVector(100,0,0));
  l9.v.setMag(len);
  l6 = new Line(l5.v);
  l6.rotateAtAround(angle,l4.v.cross(l5.v));
  l6.v.setMag(len);
}

void RLimoneneDraw() {
  fill(50);
  float o=3;
  stroke(0);
  sphere();
  pushMatrix();
  stroke(255,255,0);
  translate(-o,o,0);
  l1.display();
  translate(2*o,-2*o,0);
  l1.display();
  popMatrix();
  
  translate(l1.v);
  sphere();
  l7.display();
  pushMatrix();
  translate(l7.v);
  sphere();
  popMatrix();
  stroke(0,255,255);
  l2.display();
  
  translate(l2.v);
  sphere();
  stroke(0,255,255);
  l3.display();
  
  translate(l3.v);
  sphere();
  stroke(0,255,255);
  l4.display();
  
  translate(l4.v);
  sphere(25,color(255,255/2,0));
  stroke(255,255,0);
  l5.display();
  stroke(255,0,255);
  l8.display();
  pushMatrix();
  translate(l8.v);
  sphere(25,color(0));
  
  pushMatrix();
  stroke(255,0,255);
  translate(-o,o,0);
  l10.display();
  translate(2*o,-2*o,0);
  l10.display();
  popMatrix();
  
  pushMatrix();
  translate(l10.v);
  sphere(25,color(255,255,0));
  popMatrix();
  
  pushMatrix();
  stroke(255,0,255);
  l11.display();
  translate(l11.v);
  sphere(25,color(0,255,255));
  popMatrix();
  
  popMatrix();
  stroke(175);
  l9.display();
  pushMatrix();
  translate(l9.v);
  sphere(10,color(225));
  popMatrix();
  
  translate(l5.v);
  sphere();
  stroke(255,255,0);
  l6.display();
}

////////////////////////////////////////////////////////////////////////////////////

void RCarvoneSetup(){ 
  float angle = PI/3;
  float len = 100;
  l1 = new Line(100,0,0);
  l1.v.setMag(len);
  l12 = new Line(l1.v);
  l12.rotateAtAround(-2*PI/3,new PVector(0,0,100));
  l12.v.setMag(len);
  l2 = new Line(l1.v);
  l2.rotateAtAround(angle,l1.v.cross(new PVector(0,100,0)));
  l2.v.setMag(len);
  l7 = new Line(l2.v);
  l7.rotateAtAround(-2*PI/3,new PVector(0,0,100));
  l7.v.setMag(len);
  l3 = new Line(l2.v);
  l3.rotateAtAround(angle,l1.v.cross(l2.v));
  l3.v.setMag(len);
  l4 = new Line(l3.v);
  l4.rotateAtAround(angle,l2.v.cross(l3.v));
  l4.v.setMag(len);
  l5 = new Line(l4.v);
  l5.rotateAtAround(angle,l3.v.cross(l4.v));
  l5.v.setMag(len);
  l8 = new Line(l5.v);
  l8.rotateAtAround(radians(135),new PVector(100,0,0));
  l8.v.setMag(len);
  l10 = new Line(l8.v);
  l10.rotateAtAround(radians(135-90),new PVector(0,0,100));
  l10.v.setMag(len);
  l11 = new Line(l8.v);
  l11.rotateAtAround(radians(-135+90),new PVector(0,0,100));
  l11.v.setMag(len);
  l9 = new Line(l5.v);
  l9.rotateAtAround(radians(-135),new PVector(100,0,0));
  l9.v.setMag(len);
  l6 = new Line(l5.v);
  l6.rotateAtAround(angle,l4.v.cross(l5.v));
  l6.v.setMag(len);
}

void RCarvoneDraw() {
  fill(50);
  float o=3;
  stroke(0);
  sphere();
  stroke(0,255,255);
  l1.display();
  pushMatrix();
  translate(-o,o,0);
  stroke(0,255,255);
  l12.display();
  translate(2*o,-2*o,0);
  l12.display();
  translate(l12.v);
  sphere(25,color(255,0,0));
  popMatrix();
  translate(l1.v);
  sphere();
  l7.display();
  pushMatrix();
  translate(l7.v);
  sphere();
  popMatrix();
  pushMatrix();
  translate(-o,o,0);
  stroke(255,255,0);
  l2.display();
  translate(2*o,-2*o,0);
  l2.display();
  popMatrix();
  
  translate(l2.v);
  sphere();
  stroke(255,255,0);
  l3.display();
  
  translate(l3.v);
  sphere();
  stroke(255,255,0);
  l4.display();
  
  translate(l4.v);
  sphere(25,color(255,255/2,0));
  stroke(0,255,255);
  l5.display();
  stroke(255,0,255);
  l8.display();
  pushMatrix();
  translate(l8.v);
  sphere();
  stroke(255,0,255);
  l10.display();
  pushMatrix();
  translate(l10.v);
  sphere(25,color(0,255,255));
  popMatrix();
  pushMatrix();
  translate(-o,o,0);
  stroke(255,0,255);
  l11.display();
  translate(2*o,-2*o,0);
  l11.display();
  translate(l11.v);
  sphere(25,color(255,255,0));
  popMatrix();
  popMatrix();
  stroke(175);
  l9.display();
  pushMatrix();
  translate(l9.v);
  sphere(10,color(225));
  popMatrix();
  
  translate(l5.v);
  sphere();
  stroke(0,255,255);
  l6.display();
}

//////////////////////////////////////////////////////////////////////////////////////

void SCarvoneSetup(){ 
  float angle = PI/3;
  float len = 100;
  l1 = new Line(100,0,0);
  l1.v.setMag(len);
  l2 = new Line(l1.v);
  l2.rotateAtAround(angle,l1.v.cross(new PVector(0,100,0)));
  l2.v.setMag(len);
  l7 = new Line(l2.v);
  l7.rotateAtAround(-2*PI/3,new PVector(0,0,100));
  l7.v.setMag(len);
  l3 = new Line(l2.v);
  l3.rotateAtAround(angle,l1.v.cross(l2.v));
  l3.v.setMag(len);
  l12 = new Line(l3.v);
  l12.rotateAtAround(-2*PI/3,l1.v.cross(l2.v));
  l12.v.setMag(len);
  l4 = new Line(l3.v);
  l4.rotateAtAround(angle,l2.v.cross(l3.v));
  l4.v.setMag(len);
  l5 = new Line(l4.v);
  l5.rotateAtAround(angle,l3.v.cross(l4.v));
  l5.v.setMag(len);
  l8 = new Line(l5.v);
  l8.rotateAtAround(radians(135),new PVector(100,0,0));
  l8.v.setMag(len);
  l10 = new Line(l8.v);
  l10.rotateAtAround(radians(135-90),new PVector(0,0,100));
  l10.v.setMag(len);
  l11 = new Line(l8.v);
  l11.rotateAtAround(radians(-135+90),new PVector(0,0,100));
  l11.v.setMag(len);
  l9 = new Line(l5.v);
  l9.rotateAtAround(radians(-135),new PVector(100,0,0));
  l9.v.setMag(len);
  l6 = new Line(l5.v);
  l6.rotateAtAround(angle,l4.v.cross(l5.v));
  l6.v.setMag(len);
}

void SCarvoneDraw() {
  fill(50);
  float o=3;
  stroke(0);
  sphere();
  pushMatrix();
  translate(-o,o,0);
  stroke(255,255,0);
  l1.display();
  translate(2*o,-2*o,0);
  l1.display();
  popMatrix();
  
  translate(l1.v);
  sphere();
  l7.display();
  pushMatrix();
  translate(l7.v);
  sphere();
  popMatrix();
  stroke(0,255,255);
  l2.display();
  
  translate(l2.v);
  sphere();
  stroke(0,255,255);
  l3.display();
  pushMatrix();
  translate(-o,o,0);
  stroke(0,255,255);
  l12.display();
  translate(2*o,-2*o,0);
  l12.display();
  translate(l12.v);
  sphere(25,color(255,0,0));
  popMatrix();
  
  translate(l3.v);
  sphere();
  stroke(0,255,255);
  l4.display();
  
  translate(l4.v);
  sphere(25,color(255,255/2,0));
  stroke(255,255,0);
  l5.display();
  stroke(255,0,255);
  l8.display();
  pushMatrix();
  translate(l8.v);
  sphere();
  
  pushMatrix();
  translate(-o,o,0);
  stroke(255,0,255);
  l10.display();
  translate(2*o,-2*o,0);
  l10.display();
  popMatrix();
  
  pushMatrix();
  translate(l10.v);
  sphere(25,color(255,255,0));
  popMatrix();
  
  pushMatrix();
  stroke(255,0,255);
  l11.display();
  translate(l11.v);
  sphere(25,color(0,255,255));
  popMatrix();
  
  popMatrix();
  stroke(175);
  l9.display();
  pushMatrix();
  translate(l9.v);
  sphere(10,color(225));
  popMatrix();
  
  translate(l5.v);
  sphere();
  stroke(255,255,0);
  l6.display();
}

void setup() {
  size(500,800,P3D);
  SCarvoneSetup();
}

void draw() {
  standardDraw("S-Carvone");
  
  SCarvoneDraw();
}

void sphere() {
  noStroke();
  sphere(25,50);
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
  translate(p.x,p.y,p.z);
}
void standardDraw(String moleculeName) {
  background(182,173,242);
  directionalLight(146,146,146,0,0,-1);
  ambientLight(122, 122, 122);
  
  translate(width/2, height/2-100);
  
  fill(0);
  textSize(24);
  text(moleculeName,-200,-235);
  
  if(key == 'a') {
    currRot[0] += (2*PI*(mouseX-pmouseX)/width);
    currRot[1] += (2*PI*(mouseY-pmouseY)/width);
  }else if(key == 's') {
    currRot[1] += (2*PI*(mouseX-pmouseX)/width);
    currRot[2] += (2*PI*(mouseY-pmouseY)/width);
  }else if(key == 'd') {
    currRot[2] += (2*PI*(mouseX-pmouseX)/width);
    currRot[0] += (2*PI*(mouseY-pmouseY)/width);
  }else if(key == 'q') {
    //restart to rotation 0
    currRot[0]=0;
    currRot[1]=0;
    currRot[2]=0;
  }
  
  rotateX(currRot[0]);
  rotateY(currRot[1]);
  rotateZ(currRot[2]);
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