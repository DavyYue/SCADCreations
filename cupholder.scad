h = 12;
deg = 90;
slices = 80;
scale = [4/3, 4/3];
$fn = 7;
linear_extrude(height=h, center = true, twist = deg, slices = slices, scale=scale) {
    difference() {
        offset(r=0.1)
        circle(r=4);
        offset(r=0.1)
        circle(r=3.7);
    }
}
translate([0,0,-h/2])
cylinder(r=4, h / slices);