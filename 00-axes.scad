/*
 * Show the axes, using imported text.
 * This is not a great solution.
 */

translate([10,-6,0])
linear_extrude(height=1)
import("x.dxf");

translate([-6,15,0])
linear_extrude(height=1)
import("y.dxf");

translate([-6,0,15])
rotate([90,0,0])
linear_extrude(height=1)
import("z.dxf");

cube([12,1,1]);
cube([1,12,1]);
cube([1,1,12]);
