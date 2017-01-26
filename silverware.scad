/**
 * @author Robotia
 * @brief Silverware
 */


// Spoon
handle(0,0,0);

// Fork
handle(-6,0,0);

// Knife
handle(6,0,0);

module handle(x,y,z) {
    rotate([90,0,0]) {
        scale([1, 0.6, 1]) {
            translate([x, y + 1, z]) {
                minkowski() {
                    sphere(r=0.5);
                    cylinder(r1=1, r2=0.5, h=15, $fn=20);
                }
                
            }
        }
    }
}