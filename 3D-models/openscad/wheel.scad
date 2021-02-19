include <constants.scad>;

module wheel(){
    difference(){
        cylinder(h = wheel_h, r = wheel_r, center = false);
        holes = 3;
        for (i = [0: holes * 4]){
            angle = i * 90/holes;
            x = (wheel_r - 3) * cos(angle);
            y = (wheel_r - 3) * sin(angle);
            translate([x, y, 0]){
                cylinder(h = 5, r = 1, center = true);
            }
        }
        cube([5, 3, 5], center = true);
    }
}

wheel();