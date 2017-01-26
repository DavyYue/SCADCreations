/**
 * @author Robotia
 * @brief Doorstop
 */

baseborder = 0.05; // Percentage of doorstop length/width base will go over

doorstop = [2, 6, 1.5];

translate([doorstop[0] * baseborder / 2, doorstop[1] * baseborder / 2, doorstop[2] * baseborder * 2])
prism(doorstop[0], doorstop[1], doorstop[2], center=false);

minkowski() {
    cube(size=[doorstop[0]*(1+baseborder), doorstop[1]*(1+baseborder), doorstop[2]*baseborder]);
    cylinder(r=doorstop[2]*baseborder, h=0.1, $fn=30);
}




module prism(l, w, h, center=false){
    if (center == true) {
        translate([- l / 2, - w / 2 - w / 30, 0]) {
            polyhedron(points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]], faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]);
        }
    } else {
        polyhedron(points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]], faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]);
    }
}