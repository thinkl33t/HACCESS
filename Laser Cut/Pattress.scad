use <lib.scad>

module pattress()
{
    difference()
    {
        translate([0,0,-46/2]) linear_extrude(height=46) rrect([86, 86], r=3, center=true);
        difference()
        {
            translate([0,0,3]) cube([80,80,43.1], center=true);
            translate([-60.3/2,0,-46/2]) cylinder(r=5, h=30);
            translate([60.3/2,0,-46/2]) cylinder(r=5, h=30);
            translate([-60.3/2-5,0,-46/2]) cube([10,10,60], center=true);
            translate([60.3/2+5,0,-46/2]) cube([10,10,60], center=true);
        }
        translate([-60.3/2,0]) cylinder(r=3.5/2, h=100, center=true);
        translate([60.3/2,0]) cylinder(r=3.5/2, h=100, center=true);
    }
}

pattress();
