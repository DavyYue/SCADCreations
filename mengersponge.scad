/**
 * @author Robotia
 * @brief Creates a menger sponge with specified size and depth
 */
size = 10;
dpth = 2;
difference() {
    cube(size, center=true);
    spongeit(cl[0], size / 3, dpth);
}

module spongeit(pos, size, depth) {
    if (depth > 0) {
    for(i = [-1,0,1]) {
        for (j = [-1,0,1]) {
            for (k = [-1,0,1]) {
                npos = [pos[0] + size*i,pos[1]+size*j,pos[2]+size*k];
                if (!((i == 0 && j == 0) || (j == 0 && k == 0) || (i == 0 && k == 0))) {
                        spongeit(npos, size/3, depth - 1);
                } else {
                    translate(npos) {
                        cube(size, center=true);
                    }
                }
            }
        }
    }

    }
}