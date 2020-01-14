$fn=90;

module hinge() {

    difference() {
        
        union() {
            cube( [ 46.0, 24, 3.0 ] );
            translate( [ 0, 24, 3/2 ] ) {
                rotate( [ 0, 90, 0 ] ) {
                    cylinder( d = 9, h = 15 );
                }
            }
        }
        
        union() {
            cube( [ 5.0-1.5, 11.0, 3.0 ] );
            cube( [ 5.0, 11.0-1.5, 3.0 ] );
            translate( [ 5.0-1.5, 11.0-1.5, 0 ] ) {
                cylinder( r = 1.5, h = 3.0 );
            }
        }

        translate( [ 15.0, 12.0, 0 ] ) {
            union() {
                translate( [ 0, 1.5, 0 ] ) {
                    cube( [ 31.0, 12.0-1.5, 3 ] );
                }
                translate( [ 1.5, 0, 0 ] ) {
                    cube( [ 31.0-1.5, 12.0, 3 ] );
                }
                translate( [ 1.5, 1.5, 0 ] ) {
                    cylinder( r = 1.5, h = 3.0 );
                }
            }
        }
        
        translate( [ 46.0 - 6.0, 6.0, 0 ] ) {
            cylinder( d = 4.0, h = 3 );
        }
        translate( [ 46.0 - 26.0, 6.0, 0 ] ) {
            cylinder( d = 4.0, h = 3 );
        }
        
    *   translate( [ 0, 24, 1.5 ] ) { 
            rotate( [ 0, 90, 0 ] ) {
                cylinder( d = 3, h = 26 );
            }
        }



    }
}

*projection() {
    translate( [ 0, 0, -1.5 ] ) {
        difference() {
            hinge();
            translate( [ 0, 24, 3/2 ] ) {
                rotate( [ 0, 90, 0 ] ) {
                    cylinder( d = 9, h = 15 );
                }
            }
        }
    }
}

intersection() {
    translate( [ 0, 0, -1.5 ] ) hinge();
    translate( [ -50, -50, 0 ] ) cube( [ 100, 100, 100 ] );
}