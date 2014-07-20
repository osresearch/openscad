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


for (size=[10,15,20])
{
	translate([0,0,size*1.5/2])
	truncated_sphere(size, 1);
}

%translate([0,0,-1]) cube([100,100,2], center=true);
