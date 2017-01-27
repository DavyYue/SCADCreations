/**
 * @author Robotia
 * @brief 3.5x5.5 inch Memo Pad Cover & Holder
 */
dims = [4, 6, 0.1];

// Bottom
minkowski() {
    cube(dims);
    cylinder(r=dims[0]/40, h=dims[2]/40, $fn=40);
}

// Top
translate([dims[0] + dims[0]/10, 0, 0]) {
    minkowski() {
        cube(dims);
        cylinder(r=dims[0]/40, h=dims[2]/40, $fn=40);
    }
}


translate([dims[0]/2, dims[1]/2, dims[2] * 1.5]) {
    difference() {
        cube(dims * 0.9, center=true);
        cube([dims[0] * 0.88, dims[1] * 0.9, dims[2] * 0.5], center=true);
    }
}



