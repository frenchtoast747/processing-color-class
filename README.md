processing-color-class
======================

A helper Color class for the Processing language. I hated all the crap I had to write every time I wanted to add two colors together.

Data Members
-------------------
```
int red;
int green;
int blue;
```

Constructors
-----------------
There are 3 constructors
```
Color();
Color( color c );
Color( Color C );
```
1. The first constructor takes nothing for parameters and returns the color black. The newly created Color can then have its R, G, and B values set manually.

2. The second constructor takes the Processing color type and creates a new Color based on its R, G, and B values.

3. The third constructor takes another Color object and creates a copy of that color.

Methods
-----------
```
boolean equals( Color other );
boolean equals( color other );
```
Takes either a Color object or Processing color type and returns true or false if the two colors equal.

```
void divideByFactor( int factor );
void divideByFactor( float factor );
```
Takes in a factor and divides each component R, G, and B value by that factor.

```
void multiplyByFactor( int factor );
void multiplyByFactor( float factor );
```
Takes in a factor and muliplies each component R, G, and B value by that factor.

```
void addColor( Color other );
void addColor( color other );
```
Adds this Color or color to the other color.<br />
**WARNING: the values of R, G, and B are not clamped to 255.**

```
void subtractColor( Color other );
void subtractColor( color other );
```
Subtracts this Color or color from the other color.<br />
**WARNING: the values of R, G, and B are not clamped to 0.**

```color getColor();```
Returns the Processing color representation of Color

```double getColorSquaredDistance( Color other );```
Returns the squared distance (less calulation intensive) between two Color values. This has nothing to do with the Color's position in the image.

```double getColorDistance( Color other );```
Returns the distance between two Color values. This has nothing to do with the Color's position in the image.

``` String toString();```
Returns the string representation of the Color. The string is in the format: `( R, G, B )`.
