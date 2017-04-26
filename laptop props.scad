/*
 * @author Sameer
 * @brief Bases to prop up laptop at an angle for ergonomics
 */
r = 1.5;
$fn = 60;
cylinder(r=r, h=r*2);
cylinder(r1=r*1.5, r2=r, h=r);

intersection() {
translate([0,0,r*2])
rotate_extrude(angle=300) {
    cr = r/5;
    translate([r-cr,0])
    circle(r=cr);
}
translate([0,0,r*2])
rotate_extrude(angle=300) {
    cr = r/5;
    translate([-(r-cr),0])
    circle(r=cr);
}
}