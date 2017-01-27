/*
 * @author Robotia
 * @brief Standard blinds wand in sections. Print & glue together. Use a paper clip to attach it if needed.
 */

for (i = [0:6:35]) {
    translate([0,i/6,0])
    rotate([0,90,0]) {
        rotate(30) {
            difference() {
                cylinder(r=3/8,h=6, $fn=6);
                
                if (i != 0)
                cylinder(r=1/8,h=1,$fn=6);
                
            }

        }
    }
    if (i != 30) {
        translate([6,i/6,0])
        rotate([0,90,0])
        rotate(30)
        cylinder(r=1/8,h=1,$fn=6);
    } else {
        translate([6,i/6,0])
        difference() {
            cube([1, 1/2, 1/8], center=true);
            translate([1/4,0,-1/4])
            cylinder(r=1/8, h=1/2, $fn=100);
        }
        
    }
}