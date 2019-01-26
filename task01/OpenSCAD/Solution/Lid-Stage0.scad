// Parameters
// Diameter of the can
d1 = 67.3 + 1.3;
// Inner diameter
d2 = d1 - 0.8;
// Outer diameter of the lid
d0 = d1 + 4;

// Height of the basement
h0 = 2;
// Height of the inner part
h1 = 3;
// Height of the outer part
h2 = 2;

// Overall height of the lid
h = h0 + h1 + h2;

// See http://www.openscad.org/cheatsheet/

module body() {
    cylinder(h = h, d = d0, center = false);
}

module can() {
    cylinder(h = h1 + h2, d = d1, center = false);
}


module lid() {
    difference() {
        body();
        translate([0, 0, h0]) {
            can();
        }
    }
}

lid();
