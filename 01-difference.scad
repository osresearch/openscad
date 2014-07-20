// Constructive Solid Geometry operator: difference
// "Subtracts" all additional items from the first item.

render() difference()
{
	sphere(r=10);
	cube([30,8,8], center=true);
	cube([8,30,8], center=true);
	cube([8,8,30], center=true);
}
