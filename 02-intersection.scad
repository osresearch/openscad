// Construct Solid Geometry operator: intersection
// Leaves only the volume that is in all of the entries.

render() intersection()
{
	sphere(r=10);
	cube([15,15,15], center=true);
}
