/**
 * @author Robotia
 * @brief Modular heatsink, can be printed by selective laser scintering metal
 */
 
heatsink(10, 10, 10, lfc=10, wfc=10);

module heatsink(l, w, h, lfc=10, wfc=10) {
    cube([l, w, h * 0.4]);
    translate([0, 0, h * 0.4]) {
        for(i = [0:lfc-1]) {
            for(j = [0:wfc-1]) {
                translate([ i / lfc * l, j / wfc * w])
                translate([l/lfc/4, w/wfc/9.6, 0]) {
                    cube([l/lfc/2,w/wfc/1.2,h*0.6]);
                }
            }
        }
    }
}