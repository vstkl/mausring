$fn = 150;
 
size=10;
w = 5;
bearing_cut = 2;
bear_h = w-bearing_cut;

rotate_extrude(){

difference() {
	union() {
		translate(v = [size, 0, 0]) {
			square([w,w],center = true);
		}
		translate(v = [2*size -2*bearing_cut
		, 0, 0]) {
			square([w,w
			],center = true);
		}
	}
	


translate(v = [size+bear_h,
	0, 0]) {
		square([w,bear_h],center=true);
	}
	
}}