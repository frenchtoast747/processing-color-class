class Color{
  int red, green, blue;
  final static float EPSILON = 0.001;
  /**
  * Constructors
  * Empty parameter list returns Color with RGB values set to zero (black)
  * Can take another Color and creates a copy of that color
  * Can take a processing primitive color and creates a Color of that color
  */
  Color(){
    this.red=0;this.green=0;this.blue=0;
  }
  Color( Color c ){
    this.red = c.red;
    this.green = c.green;
    this.blue = c.blue;
  }
  Color( color c ){
    this.red = c >> 16 & 0xFF;
    this.green = c >> 8 & 0xFF;
    this.blue = c & 0xFF; 
  }
  /**
  * Given either a Color or a color, 
  * returns true if they are within 0.0001 of each other
  */
  boolean equals(Color other){
      return (Math.abs(this.red - other.red) < Color.EPSILON) 
          && (Math.abs(this.green - other.green) < Color.EPSILON) 
          && (Math.abs(this.blue - other.blue) < Color.EPSILON);
  }
  boolean equals(color c){
      Color other = new Color(c);
      return (Math.abs(this.red - other.red) < Color.EPSILON) 
          && (Math.abs(this.green - other.green) < Color.EPSILON) 
          && (Math.abs(this.blue - other.blue) < Color.EPSILON);
  }
  /**
  * Given a factor, divides each RGB value by the int or float factor
  */
  void divideByFactor(int factor){
    this.red /= factor;
    this.green /= factor;
    this.blue /= factor;
  }
  void divideByFactor(float factor){
    this.red /= factor;
    this.green /= factor;
    this.blue /= factor;
  }
  /**
  * Given a factor, multiplies each RGB value by the int or float factor
  */
  void multiplyByFactor(int factor){
    this.red *= factor;
    this.green *= factor;
    this.blue *= factor;
  }
  void multiplyByFactor(float factor){
    this.red *= factor;
    this.green *= factor;
    this.blue *= factor;
  }
  /**
  * Adds the RGB values of either Color c or color c to this Color
  * WARNING: Allows for values greater than 255
  */
  void addColor(color c){
    this.red += c >> 16 & 0xFF;
    this.green += c >> 8 & 0xFF;
    this.blue += c & 0xFF;
  }
  void addColor(Color c){
    this.red += c.red;
    this.green += c.green;
    this.blue += c.blue;
  }
  /**
  * Subtracts the RGB values of either Color c or color c from this Color
  * WARNING: Allows for values less than 0
  */
  void subtractColor(color c){
    this.red -= c >> 16 & 0xFF;
    this.green -= c >> 8 & 0xFF;
    this.blue -= c & 0xFF;
  }
  void subtractColor(Color c){
    this.red -= c.red;
    this.green -= c.green;
    this.blue -= c.blue;
  }
  /**
  * Returns a color from the RGB values of this Color
  */
  color getColor(){
    return color( this.red, this.green, this.blue );
  }
  /**
  * Returns the squared distance between two Colors
  */
  double getColorSquaredDistance( Color other ){
    return Math.abs( this.red - other.red ) * Math.abs( this.red - other.red ) +
           Math.abs( this.green - other.green ) * Math.abs( this.green - other.green ) +
           Math.abs( this.blue - other.blue ) * Math.abs( this.blue - other.blue );
  }
  /**
  *  Returns the distance between two Colors
  */
  double getColorDistance( Color other ){
    return Math.sqrt( getColorSquaredDistance( other ) );
  }
  /**
  * String representation of this Color:
  * ( R, G, B)
  */
  String toString(){
    return "( " + this.red + ", " + this.green + ", " + this.blue + " )"; 
  }
}