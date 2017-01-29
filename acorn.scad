/*
 * @author Robotia
 * @brief Acorn
 */


rotate_extrude(angle=360, $fn=15) {
    difference() {
        union() {
            translate([0,0,0]) {
                scale([1,0.5]) {
                    difference() {
                        circle(r=10, $fn=12);
                        translate([0,-6,0])
                        square([20,8], center=true);
                    }
                }
            }
        
            translate([0,0,0])
            square([1,6]);
        

            translate([0,-16,0])
            square([0.4,0.8], center=true);
        }
        translate([-20,-20,0])
        square([20,40]);
    }
}

rotate_extrude(angle=360, $fn=180) {
    difference() {
            translate([0,0,0]) {
                scale([1.1,2]) {
                    difference() {
                        circle(r=8, $fn=360);
                        translate([-10,0,0])
                        square([20,20]);
                    }
                }
            }
            translate([-20,-20,0])
            square([20,40]);
    }
}