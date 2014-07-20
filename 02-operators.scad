// Constructive Solid Geometry operators:
// difference() and intersection()

translate([0,0,20])
{
	%sphere(r=10);
	cube([10,30,10], center=true);
}


/*
 * difference() "subtracts" all additional items from the first item.
 */
translate([-10,0,0]) render()
difference()
{
	sphere(r=10);
	cube([10,30,10], center=true);
}


/*
 * intersection() find the volume that is in all of the items.
 */
translate([10,0,0]) render()
intersection()
{
	sphere(r=10);
	cube([10,30,10], center=true);
}

