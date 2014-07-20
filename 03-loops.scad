// OpenSCAD operators: translate and rotate
// Moves an child in the current reference frame

sides = 7;

for (i=[1:sides])
{
	rotate([0,0,i*360/sides])
	translate([-5,15,0])
	cube([10,10,i*2]);
}

// ground reference
%translate([0,0,-1/2]) cube([100,100,1], center=true);
%translate([0,25,0]) cube([1,50,1], center=true);
