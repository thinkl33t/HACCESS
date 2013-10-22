module rrect(dim=[20,20], r=10)
{
    minkowski()
    {
        square([dim[0]-(2*r), dim[1]-(2*r)], center=true);
        translate([a, b])circle(r=r, center=true);
    }
}

module lcd()
{
    difference()
    {
        color("Green") translate([0,0,-2]) cube([80, 36, 1.6], center=true);
        for(x = [75/2, -75/2])
            for (y = [31.0/2, -31.0/2])
                translate([x,y]) color("Yellow") cylinder(r=2.5/2, h=100, center=true);
    }
    color("Black") cube([71.2, 24, 4], center=true);
    color("Blue") translate([0,0,0]) cube([64.5, 13.8, 4.1], center=true);
}

module rfid()
{
    difference()
    {
        color("DarkBlue") translate([0,0,-2]) cube([60, 40, 1.6], center=true);
        for(y = [30/2, -30/2])
            translate([20,y]) color("Grey") cylinder(r=2.5/2, h=100, center=true);
    }
}

rfid();
