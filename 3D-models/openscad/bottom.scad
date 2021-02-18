module bottom(){
    box_x = 35/2;
    box_y = 8;
    r = sqrt((box_x)^2 + (box_y)^2) + 2;

    difference(){
        cylinder(h = 2, r1 = r, r2 = r, center = false);
        r_center = 3;
        cylinder(h = 10, r1 = r_center, r2 = r_center, center = true);
    }

    //Anchors 
    for (i = [-1, 1]){
        r_center = 2;
        translate([box_x * i, box_y, 0]){
            cylinder(h = 6, r1 = r_center, r2 = r_center, center = false);
        }
    }
}

bottom();
