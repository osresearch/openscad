/*
 * polygon() creates a 2D shape in the XY plane.
 * linear_extrude() extends it into the Z plane.
 */

translate([-20,0,0]) 
linear_extrude(height=30)
polygon([
	[0,0],
	[0,5],
	[5,0],
]);

translate([20,0,0]) 
linear_extrude(height=30, twist=360)
polygon([
	[0,0],
	[0,5],
	[5,0],
]);

linear_extrude(height=30, twist=360)
translate([8,0,0]) 
polygon([
	[0,0],
	[0,5],
	[5,0],
]);

%cube([50,50,0.5], center=true);
