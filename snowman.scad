/**
 * @author Roboita
 * @brief 3-part Snowman w/ eyes, nose, buttons, arms
 */

scale=10;
res=40; // Resolution on spheres and cylinders, raise to raise roundness
// "Raisin black"
black=[33/255,33/255,36/255];
white="ivory";
brown="saddlebrown";

translate([0,0,scale])
{   
    // Abdomen
    color(white)
    sphere(r=scale,$fn=res);
    
    translate([0,0,scale + scale/3*1.80])
    {
        // Torso
        color(white)
        sphere(r=scale/3 * 2,$fn=res);
        
        // Buttons
        for(ind=[1:4])
        {
            color(black)
            translate([0,scale/3*2 - scale/64*pow(ind,2),ind* scale/7.5])
            sphere(r=scale/20,$fn=res);
        }
        
        // Arms
        // Right
        for (ind=[-1:1]) {
            color(brown)
            translate([ind*scale/3*1.8,0,0])
            rotate([0,ind*45,0])
            cylinder(r=scale/36,h=scale/1.3,$fn=res);
        }
        
        translate([0,0,scale * .95])
        {
            // Head
            color(white)
            sphere(r=scale/3,$fn=res);
            
            //Hat
            translate([0,0,scale/3.6])
            {
                // Bottom section
                color(black)
                cylinder(r=scale/3.3,h=scale/16, $fn=res*2);
                
                // Top section
                translate([0,0,scale/16])
                {
                    color(black)
                    cylinder(r=scale/4,h=scale/2.9,$fn=res*2);
                    
                    // Band
                    color("gainsboro")
                    cylinder(r=scale/4,h=scale/24,$fn=res*4);
                }
                
            }
            
            
            // Carrot Nose
            color("orange")
            translate([0,scale/4,0])
            rotate([-90,0,0])
            cylinder(r1=scale/20,r2=0,h=scale/4,$fn=res*4);
            
            // Eyes
            color(black)
            translate([-scale/10,scale/4,scale/8])
            sphere(r=scale/20,$fn=res);
            
            color(black)
            translate([scale/10,scale/4,scale/8])
            sphere(r=scale/20,$fn=res);
            
            // Stoney Smile, parabolic in y,z
            for(ind=[-3 : 3])
            {
                color(black)
                translate([-scale/16*ind,scale/3.4 - scale/240*pow(ind,2),-scale/8 + scale/100*pow(ind,2)])
                sphere(r=scale/40,$fn=res);                
            }
            
            // Speech Bubble, optional
            /*translate([-scale,0,0])
            {
                // Box
                color(white)
                translate([-scale/1.8,0,0])
                cube([scale*2,scale/20,scale/2],center=true);
                
                // Text
                color("royalblue")
                rotate([90,0,180])
                translate([-scale/2.5,0,0])
                text("SAMPLE TEXT",valign="center",font="Comic Sans MS",size=1);
                
            }*/
        }
    }
}