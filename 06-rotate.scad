/*
 * polygon() creates a 2D shape in the XY plane.
 * rotate_extrude() extends it into the Z plane.
 */

module shape()
{
	polygon([
		[0,0],
		[0,2],
		[2,10],
		[5,2],
		[10,5],
		[15,2],
		[15,-5],
	]);
}

// Linear extrude to show what the shape looks like
translate([-20,10,0]) 
rotate([90,0,0])
linear_extrude(height=20)
shape();

// Rotate the shape around a circle
translate([20,0,0]) 
rotate_extrude() shape();

// Show the cross section of the torus
translate([-10,40,0]) 
rotate([90,0,0])
linear_extrude(height=2)
circle(r=4);

// Create a torus by rotating a circle
// that has been translated from the origin.
// (if it remained at the origin, it would be
// a sphere)
translate([20,40,0]) 
rotate_extrude()
translate([10,0,0])
circle(r=4);


%translate([0,20,-10]) cube([80,80,0.5], center=true);
