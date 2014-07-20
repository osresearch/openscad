// OpenSCAD shapes

/*
 * Cubes can be centered at (0,0,0) with "center=true".
 * The volume of the cube will go from (-5,-5,-5)
 * to (5,5,5)
 */
color("green") cube([10,10,10], center=true);

/*
 * without "center=true", the cube will have its
 * corner at (0,0,0) and (10,10,10)
 */
color("red") cube([10,10,10]);


/*
 * translate() moves its children in the current
 * reference frame. To move the centered box to the
 * "ground", we need to translate it in +Z by half
 * the height.  We also move it in -X to clear
 * the other shapes.
 */
translate([-15,0,10/2]) cube([10,10,10], center=true);


/*
 * cylinder can take two arguments: radius and height
 * Note that the cylinder is centered at (0,0,0)
 * goes to (0,0,h)
 */
translate([18,0,0]) cylinder(r=5, h=10);


/*
 * cylinder can also take three arguments,
 * r1, r2 and the height to make a cone.
 */
translate([30,0,0]) cylinder(r1=5, r2=0, h=10);


/*
 * The OpenSCAD % modifier makes a semi-transparent
 * object.  This is useful to indicate the "ground"
 * or other references for debugging.  They will not
 * appear in the STL output for printing.
 */
%translate([0,0,-1/2]) cube([100,50,1], center=true);
