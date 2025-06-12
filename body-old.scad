$fn = 200;

union() {
	color(alpha = 1.0, c = [0, 0, 0.7]) {
		difference() {
			cylinder(h = 4, r1 = 14, r2 = 14);
			translate(v = [0, 0, -1]) {
				cylinder(h = 6, r1 = 13, r2 = 13);
			}
			translate(v = [0, 0, -1]) {
				rotate(a = [90, 0, 0]) {
					translate(v = [-3.0, 0, 13]) {
						cube(size = [6, 6, 1.5]);
					}
				}
			}
		}
	}
	color(alpha = 1.0, c = [0, 0, 0.9]) {
		difference() {
			cylinder(h = 4, r1 = 17, r2 = 17);
			translate(v = [0, 0, -1]) {
				cylinder(h = 6, r1 = 16, r2 = 16);
			}
			union() {
				rotate(a = [0, 0, 22.0]) {
					translate(v = [-0.25, -0.25, -1]) {
						translate(v = [15.5, 0, 0]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 67.0]) {
					translate(v = [-0.25, -0.25, -1]) {
						translate(v = [15.5, 0, 0]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 112.0]) {
					translate(v = [-0.25, -0.25, -1]) {
						translate(v = [15.5, 0, 0]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 157.0]) {
					translate(v = [-0.25, -0.25, -1]) {
						translate(v = [15.5, 0, 0]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 202.0]) {
					translate(v = [-0.25, -0.25, -1]) {
						translate(v = [15.5, 0, 0]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 247.0]) {
					translate(v = [-0.25, -0.25, -1]) {
						translate(v = [15.5, 0, 0]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 292.0]) {
					translate(v = [-0.25, -0.25, -1]) {
						translate(v = [15.5, 0, 0]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 337.0]) {
					translate(v = [-0.25, -0.25, -1]) {
						translate(v = [15.5, 0, 0]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
			}
		}
	}
	translate(v = [0, -0.25, 0]) {
		rotate(a = [90, 0, 0]) {
			translate(v = [-2.0, 0, 13]) {
				cube(size = [4, 4, 1]);
			}
		}
	}
	color(alpha = 1.0, c = [0.9, 0, 0]) {
		union() {
			rotate(a = [0, 0, 22.0]) {
				translate(v = [15.5, 0]) {
					cube(size = [1, 1, 4]);
				}
			}
			rotate(a = [0, 0, 67.0]) {
				translate(v = [15.5, 0]) {
					cube(size = [1, 1, 4]);
				}
			}
			rotate(a = [0, 0, 112.0]) {
				translate(v = [15.5, 0]) {
					cube(size = [1, 1, 4]);
				}
			}
			rotate(a = [0, 0, 157.0]) {
				translate(v = [15.5, 0]) {
					cube(size = [1, 1, 4]);
				}
			}
			rotate(a = [0, 0, 202.0]) {
				translate(v = [15.5, 0]) {
					cube(size = [1, 1, 4]);
				}
			}
			rotate(a = [0, 0, 247.0]) {
				translate(v = [15.5, 0]) {
					cube(size = [1, 1, 4]);
				}
			}
			rotate(a = [0, 0, 292.0]) {
				translate(v = [15.5, 0]) {
					cube(size = [1, 1, 4]);
				}
			}
			rotate(a = [0, 0, 337.0]) {
				translate(v = [15.5, 0]) {
					cube(size = [1, 1, 4]);
				}
			}
		}
	}
}
