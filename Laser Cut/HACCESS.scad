$fn = 30;

use <lib.scad>
use <Pattress.scad>
use <PattressPlate.scad>

%pattress();
%translate([0,0,23.1]) linear_extrude(height=3) pplate();
translate([0,20,20]) lcd();
translate([0,-10,17]) rotate([0,0,90]) rfid();
