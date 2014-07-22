/*
 * Demonstrate the Thingiverse Customizer.
 */

// Number of blocks: higher values are smoother
n = 180; // [1:300]

// Number of twists to make
twists = 3; // [1:10]

// Radius of the ring
radius = 30; // [1:50]

// Height of the waves
height = 8; // [1:20]

// Size of the blocks
size = 4; // [1.0:10.0]

// Phase of the shrinking
phase = 5; // [-45:45]

// Amount of twist per step
tilt = 0; // [-90:90]

// Display the ground?
ground = true; // [true,false]

translate([0,0,8+4/2])
for (i = [1:n*2])
{
	rotate([0,0,i*360/n])
	translate([
		-radius+size*sin(i*360*(twists+.5)/n),
		0,
		height*cos(i*360*(twists+.5)/n)
	])
	rotate([
		90-tilt,
		0,
		0
	])
	cube([
		size*0.6 + abs(2*size * cos(phase+i*360*(twists+0.5)/n)),
		size,
		size
	], center=true);
}

if (ground)
{
	%translate([0,0,-5]) cube([200,200,10], center=true);
}
