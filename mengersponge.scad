/**
 * @author Robotia
 * @brief Creates a menger sponge with specified size and depth
 */
dpth = 4;
size = pow(3, dpth);

spongeit([0,0,0], size / 3, dpth);


module spongeit(pos, size, depth) {
    if (depth > 0) {
        for(i = [-1,0,1]) {
           for (j = [-1,0,1]) {
                for (k = [-1,0,1]) {
                    npos = [pos[0] + size*i,pos[1]+size*j,pos[2]+size*k];
                    if (!((i == 0 && j == 0) || (j == 0 && k == 0) || (i == 0 && k == 0))) {
                        spongeit(npos, size/3, depth - 1);
                        if (depth == 1) {
                            translate(npos)
                            cube(size, center=true);
                        }
                    }
                }
            }
        }
    }
}
