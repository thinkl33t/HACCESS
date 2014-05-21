$fa = 1;
$fs = 1;

use <lib.scad>

module pplate ()
{
    difference()
    {
        rrect([86, 86], r=3, center=true);
        for (x=[-60.3/2, 60.3/2])
            translate([x,0]) circle(r=3.5/2);
        translate([-62/2,16]) circle(r=10/2);
        translate([62/2,16]) circle(r=10/2);
        translate([-62/2,-16]) circle(r=10/2);
    }
}

pplate();
