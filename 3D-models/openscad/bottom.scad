include <constants.scad>;

module bottom(){

    difference(){
        //Wheel
        hole_r = 4.7;
        union(){
            cylinder(h=wheel_h, r=wheel_r, center=false);
            cylinder(h=5, r=hole_r+.5, center=false);
        }
        //Center hole
        cylinder(h=12, r=hole_r, center=true);

        //falling food hole
        translate([0,- wheel_r, 0]){
            cube([6, 11, 10], center=true);
        }
    }

    //Anchors 
    for (i = [-1, 1]){
        translate([anchor_x*i, anchor_y, 0]){
            cylinder(h=6.5, r=2.1, center=false);
            cylinder(h=5, r=3, center = false);
        }
    }
}

bottom();
