module wheel(){
    box_x = 35/2;
    box_y = 8;
    r = sqrt((box_x)^2 + (box_y)^2) + 2;
    difference(){
        cylinder(h = 2, r1 = r, r2 = r, center = true);
        holes = 3;
        for (i = [0: 5 * 4]){
            angle = i * 90/holes;
            x = (r - 2) * cos(angle);
            y = (r - 2) * sin(angle);
            translate([x, y, 0]){
                mini_r =1;
                cylinder(h = 3, r1 = mini_r, r2 = mini_r, center = true);

            }
        }
    }
}

wheel();
