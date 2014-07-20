// OpenSCAD operators: translate and rotate
// Moves an child in the current reference frame

translate([-10,-10,5]) rotate([0,0,45]) cube([10,10,10], center=true);
translate([+10,-10,5]) rotate([0,45,0]) cube([10,10,10], center=true);
translate([+10,+10,5]) rotate([45,0,0]) cube([10,10,10], center=true);
translate([-10,+10,5]) rotate([45,45,45]) cube([10,10,10], center=true);

// The OpenSCAD % modifier makes a semi-transparent
// object.  This is useful to indicate the "ground"
// or other references for debugging.  They will not
// appear in the STL output for printing.
%translate([0,0,-1/2]) cube([100,100,1], center=true);
%translate([0,25,0]) cube([1,50,1], center=true);
