$fn = 200;

union() {
	color(alpha = 1.0, c = [0, 0, 0.7]) {
		difference() {
			cylinder(h = 20, r1 = 58, r2 = 58);
			translate(v = [0, 0, -0.5]) {
				cylinder(h = 21.0, r1 = 56, r2 = 56);
			}
		}
	}
	color(alpha = 1.0, c = [0, 0, 0.9]) {
		difference() {
			cylinder(h = 20, r1 = 66, r2 = 66);
			translate(v = [0, 0, -0.5]) {
				cylinder(h = 21.0, r1 = 64, r2 = 64);
			}
		}
	}
	color(alpha = 1.0, c = [0.9, 0, 0]) {
		union() {
			rotate(a = [0, 0, 0.0]) {
				translate(v = [58, 0, 2.5]) {
					cube(size = [2, 6, 15]);
				}
			}
			rotate(a = [0, 0, 22.5]) {
				translate(v = [58, 0, 2.5]) {
					cube(size = [2, 6, 15]);
				}
			}
			rotate(a = [0, 0, 45.0]) {
				translate(v = [58, 0, 2.5]) {
					cube(size = [2, 6, 15]);
				}
			}
			rotate(a = [0, 0, 67.5]) {
				translate(v = [58, 0, 2.5]) {
					cube(size = [2, 6, 15]);
				}
			}
			rotate(a = [0, 0, 90.0]) {
				translate(v = [58, 0, 2.5]) {
					cube(size = [2, 6, 15]);
				}
			}
			rotate(a = [0, 0, 112.5]) {
				translate(v = [58, 0, 2.5]) {
					cube(size = [2, 6, 15]);
				}
			}
			rotate(a = [0, 0, 135.0]) {
				translate(v = [58, 0, 2.5]) {
					cube(size = [2, 6, 15]);
				}
			}
			rotate(a = [0, 0, 157.5]) {
				translate(v = [58, 0, 2.5]) {
					cube(size = [2, 6, 15]);
				}
			}
			rotate(a = [0, 0, 180.0]) {
				translate(v = [58, 0, 2.5]) {
					cube(size = [2, 6, 15]);
				}
			}
			rotate(a = [0, 0, 202.5]) {
				translate(v = [58, 0, 2.5]) {
					cube(size = [2, 6, 15]);
				}
			}
			rotate(a = [0, 0, 225.0]) {
				translate(v = [58, 0, 2.5]) {
					cube(size = [2, 6, 15]);
				}
			}
			rotate(a = [0, 0, 247.5]) {
				translate(v = [58, 0, 2.5]) {
					cube(size = [2, 6, 15]);
				}
			}
			rotate(a = [0, 0, 270.0]) {
				translate(v = [58, 0, 2.5]) {
					cube(size = [2, 6, 15]);
				}
			}
			rotate(a = [0, 0, 292.5]) {
				translate(v = [58, 0, 2.5]) {
					cube(size = [2, 6, 15]);
				}
			}
			rotate(a = [0, 0, 315.0]) {
				translate(v = [58, 0, 2.5]) {
					cube(size = [2, 6, 15]);
				}
			}
			rotate(a = [0, 0, 337.5]) {
				translate(v = [58, 0, 2.5]) {
					cube(size = [2, 6, 15]);
				}
			}
		}
	}
}
