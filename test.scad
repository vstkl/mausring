difference() {
	union() {
		translate(v = [10.5, 0, 0]) {
			cube(center = true, size = [5, 5, 1]);
		}
		translate(v = [19.5, 0, 0]) {
			cube(center = true, size = [5, 5, 1]);
		}
	}
	translate(v = [15, 0, 0]) {
		cylinder(center = true, h = 1, r1 = 5, r2 = 5);
	}
}
