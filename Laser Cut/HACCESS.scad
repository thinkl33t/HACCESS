$fn = 30;

use <lib.scad>
use <Pattress.scad>
use <PattressPlate.scad>

color("white") pattress();
%translate([0,0,23.1]) linear_extrude(height=3) pplate();
translate([0,15,20]) lcd();
translate([0,-24,23]) rotate([0,0,90]) rfid();
translate([-62/2,16,22]) button("red");
translate([62/2,16,22]) button("green");
translate([-62/2,-16,22]) button("blue");
translate([-60.3/2,0,9])screw();
translate([60.3/2,0,9])screw();
