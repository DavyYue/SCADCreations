

size = 10;

vec = [[0,0,0],[0,0,1],[0,0,-1],[0,1,0],[0,-1,0],[-1,0,0],[1,0,0]];
depth = 4;
cl = [[0,0,0]];
difference() {
    echo(cl);
    cube(size, center=true);
    spongeit(cl[0], size / 3, 2);
    
    //spongeit([10/3,10/3,10/3], size / 9, 1);
    /*for (i = [0:depth]) {
        echo(cl);
        newcl = [];
        size = size /3;
        for (j = [0:len(cl)]) {
            spongeit(cl[j], size);
            for (k = [0:len(vec)]) {
                newcl = concat(newcl, [[cl[j][0] + size * vec[k][0], cl[j][1] + size*vec[k][1], cl[j][2] + size*vec[k][2]]]);
            }
        }
        cl = newcl;
    }*/
}

module spongeit(pos, size, depth) {
    if (depth > 0) {
    echo(pos);
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
    translate(pos) {
        
        for (i = [0:len(vec)]) {
            npos = [pos[0] + size* vec[i][0], pos[1] + size*vec[i][1], pos[2] + size*vec[i][2]];
            echo(npos);
            translate(npos) {
                cube(size, center=true);
            }

        }
    }

    }
}