// OpenSCAD modules:
// "Functions" that create objects.
// They can take parameters and do arithmetic on them.

module truncated_sphere(r,thickness)
{
	render() intersection()
	{
		difference()
		{
			sphere(r=r);
			sphere(r=r-thickness);
		}

		cube([r*1.5,r*1.5,r*1.5], center=true);
	}
}

translate([0,0,10*1.5/2]) truncated_sphere(10, 1);
translate([0,0,15*1.5/2]) truncated_sphere(15, 1);
translate([0,0,20*1.5/2]) truncated_sphere(20, 1);

%translate([0,0,-1]) cube([100,100,2], center=true);
