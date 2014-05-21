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
        color("Green") translate([0,0,-0.9]) cube([45, 45, 1.6], center=true);
        for(x = [39/2, -39/2])
            for (y = [39/2, -39.0/2])
                translate([x,y]) color("Yellow") cylinder(r=2.5/2, h=100, center=true);
    }
    color("Grey") cube([40, 34, 3], center=true);
    color("Blue") translate([0,2,0]) cube([35, 24, 4.1], center=true);
}

module rfid()
{
    difference()
    {
        color("DarkBlue") translate([0,0,-2]) cube([20, 35, 1.6], center=true);
    }
}

module button(btn_color="white")
{
    color(btn_color) union()
    {
        translate([0,0,2]) cylinder(r=9.8/2, h=5, center=true);
        cylinder(r=12/2, h=1, center=true);
    }
    color("black") union()
    {
        translate([0,0,-3]) cube([6,6,6], center=true);
        translate([0,0,-5]) cube([12,12,5], center=true);
    }
}

rfid();
