include <constants.scad>;

module bottom(){

    difference(){
        //Wheel
        hole_r = 4.5;
        union(){
            cylinder(h=wheel_h, r=wheel_r, center=false);
            cylinder(h=5, r=hole_r+.5, center=false);
        }
        //Center hole
        cylinder(h=12, r=4.5, center=true);
        translate([0,  1-wheel_r, 0]){
            cylinder(h=10, r=5, center=true);
        }
    }

    //Anchors 
    for (i = [-1, 1]){
        translate([anchor_x*i, anchor_y, 0]){
            cylinder(h=8, r=2, center=false);
            cylinder(h=5, r=3, center = false);
        }
    }
}

bottom();
