class Line {
  PVector v;
  
  Line(float x, float y, float z) {
    this.v = new PVector(x,y,z);
  }
  
  Line(PVector _v) {
    this.v = _v.copy();
  }
  
  void rotateAtAround(PVector axis) {
    PVector buffer = new PVector(0,0,0);
    axis.normalize();
    buffer.x = this.v.x*( 0.5 +     pow(axis.x,2) *  ( 0.5 ) )
             + this.v.y*( axis.x*axis.y*( 0.5 ) - axis.z*sqrt(3)/2 )
             + this.v.z*( axis.x*axis.z*( 0.5 ) + axis.y*sqrt(3)/2 );
    
    buffer.y = this.v.x*( axis.y*axis.x*( 0.5 ) + axis.z*sqrt(3)/2 )
             + this.v.y*( 0.5 +     pow(axis.y,2) *  ( 0.5 ) )
             + this.v.z*( axis.y*axis.z*( 0.5 ) - axis.x*sqrt(3)/2 );
             
    buffer.z = this.v.x*( axis.z*axis.x*( 0.5 ) - axis.y*sqrt(3)/2 )
             + this.v.y*( axis.z*axis.y*( 0.5 ) - axis.x*sqrt(3)/2 )
             + this.v.z*( 0.5 +     pow(axis.z,2) *  ( 0.5 ) );
             
    this.v = buffer;
  }
  
  void rotateAtAround(float angle, PVector axis) {
    PVector buffer = new PVector(0,0,0);
    axis.normalize();
    //println(cos(angle));
    buffer.x = this.v.x*( cos(angle) +     pow(axis.x,2) *  ( 1-cos(angle) ) )
             + this.v.y*( axis.x*axis.y*( 1-cos(angle) ) - axis.z*sin(angle) )
             + this.v.z*( axis.x*axis.z*( 1-cos(angle) ) + axis.y*sin(angle) );
    
    buffer.y = this.v.x*( axis.y*axis.x*( 1-cos(angle) ) + axis.z*sin(angle) )
             + this.v.y*( cos(angle) +     pow(axis.y,2) *  ( 1-cos(angle) ) )
             + this.v.z*( axis.y*axis.z*( 1-cos(angle) ) - axis.x*sin(angle) );
             
    buffer.z = this.v.x*( axis.z*axis.x*( 1-cos(angle) ) - axis.y*sin(angle) )
             + this.v.y*( axis.z*axis.y*( 1-cos(angle) ) - axis.x*sin(angle) )
             + this.v.z*( cos(angle) +     pow(axis.z,2) *  ( 1-cos(angle) ) );
             
    this.v = buffer;
  }
  
  void display() {
    
    line(0,0,0,v.x,v.y,v.z);
  }
}