// Measurements
length = 35;       // Length
width_outer = 11;  // Diameter (Or width)
width_inner = 6;   // Width Seperator
height = 12;       // Height

// Render options
$fn = 100; // Number of facets

// Computed variables
radius  = width_outer/2;   // Cylinder Radius
con_len = length-radius*2; // Cylinder Conector Length

cylinder(h=height, r=radius, center=true);
translate([con_len/2,0,0]) {
    cube(size = [con_len,width_inner,height], center = true);
};
translate([con_len,0,0]) {
    cylinder(h=height, r=radius, center=true);
};
