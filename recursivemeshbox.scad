/*
 * @author Robotia
 * @brief Recursive mesh box...!
 */

size = 5;
fn = 10;

for(i = [0:0.1:size]) {
    v1 = i % 2;
    v2 = (i % 2) + 1;
    rotate([v2 * 45, 0, v2 * 45])
    meshbox(i, fn);
}

module meshbox(size=5, fn=20, innercy=2.2) {
    if (size != 0) {
    difference() {
        intersection() {
            cube(size, center=true);
            sphere(size * 17/24, $fn=fn, center=true);
        }
        
        cylinder(r=size/innercy, h=size*2, $fn=fn, center=true);
        
        rotate([90,0,0])
        cylinder(r=size/innercy, h=size*2, $fn=fn, center=true);
        
        rotate([0,90,0])
        cylinder(r=size/innercy, h=size*2, $fn=fn, center=true);
    }
    }
}