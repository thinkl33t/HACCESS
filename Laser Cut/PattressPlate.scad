$fa = 0.1;
$fs = 1;

use <lib.scad>

module pplate (b_go=true, b_stop=true, b_maint=true, buzzer=true)
{
    difference()
    {
        rrect([86, 86], r=3, center=true);
        for (x=[-60.3/2, 60.3/2])
            translate([x,0]) circle(r=4/2);

        for (x=[-66/2, 66/2])
          for (y=[-66/2, 66/2])
            translate([x,y]) circle(r=3.5/2);
        if (b_go) translate([-62/2,16]) circle(r=10/2);
        if (b_maint) translate([62/2,16]) circle(r=10/2);
        if (b_stop) translate([-62/2,-16]) circle(r=10/2);
        if (buzzer) translate([62/2,-16]) circle(r=12/2);

    }
}

module pcbplate ()
{
    difference()
    {
        rrect([76, 76], r=3, center=true);
        for (x=[-60.3/2, 60.3/2])
            translate([x,0]) circle(r=3.5/2);
        translate([-62/2,16]) circle(r=10/2);
        translate([62/2,16]) circle(r=10/2);
        translate([-62/2,-16]) circle(r=10/2);
    }
}

pplate();
