use <lib.scad>

module pplate ()
{
    difference()
    {
        rrect([86, 86], r=3, center=true);
        translate([-60.3/2,0]) circle(r=3.5/2);
        translate([60.3/2,0]) circle(r=3.5/2);
    }
}

pplate();
