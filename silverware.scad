/**
 * @author Robotia
 * @brief Silverware
 */


// Spoon
handle(0,0,0,0);

// Fork
//handle(-6,0,0,1);

// Knife
//handle(6,0,0,2);

module handle(x,y,z,type=0) {
    rotate([90,0,0]) {
        scale([1, 0.6, 1]) {
            translate([x, y + 1, z]) {
                minkowski() {
                    sphere(r=0.5);
                    cylinder(r1=1, r2=0.5, h=15, $fn=20);
                }
                translate([0, 0, 15.2]) {
                    cube([0.8 ,0.4, 1], center=true);
                    translate([0, 0, 1.5]) {
                        // Spoon
                        if(type==0) {
                            translate([0,0,2])
                            resize([4,1,6.667])
                            difference() {
                                sphere(r=1, $fn=20);
                                translate([0,0.4,0.1])
                                sphere(r=0.96, $fn=20);
                            }
                        } else if(type==1) {
                            translate([0,0,1.6])
                            resize([3,1,5])
                            difference() {
                                sphere(r=1, $fn=20);
                                translate([0,0.7,0])
                                cube([2,1,2], center=true);
                                translate([-1,0,0])
                                cube([2,2,2], center=true);
                            }
                        } else if(type==2) {
                        }
                    }
                }
            }
        }
    }
}