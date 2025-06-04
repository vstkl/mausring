$fn = 200;

union() {
	color(alpha = 1.0, c = [1, 0.1, 0.5]) {
		difference() {
			cylinder(h = 4, r1 = 15, r2 = 15);
			translate(v = [0, 0, -1]) {
				cylinder(h = 6, r1 = 14, r2 = 14);
			}
			translate(v = [-2.5, 14.5, 0]) {
				rotate(a = [90, 0, 0]) {
					cube(size = [5.0, 5.0, 1]);
				}
			}
		}
	}
	color(alpha = 1.0, c = [0, 0.9, 0]) {
		difference() {
			cylinder(h = 4, r1 = 17.4, r2 = 17.4);
			translate(v = [0, 0, -1]) {
				cylinder(h = 6, r1 = 16.2, r2 = 16.2);
			}
			union() {
				rotate(a = [0, 0, 0.0]) {
					translate(v = [-0.5, 0, 0]) {
						translate(v = [16.2, -0.75, -1]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 22.5]) {
					translate(v = [-0.5, 0, 0]) {
						translate(v = [16.2, -0.75, -1]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 45.0]) {
					translate(v = [-0.5, 0, 0]) {
						translate(v = [16.2, -0.75, -1]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 67.5]) {
					translate(v = [-0.5, 0, 0]) {
						translate(v = [16.2, -0.75, -1]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 90.0]) {
					translate(v = [-0.5, 0, 0]) {
						translate(v = [16.2, -0.75, -1]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 112.5]) {
					translate(v = [-0.5, 0, 0]) {
						translate(v = [16.2, -0.75, -1]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 135.0]) {
					translate(v = [-0.5, 0, 0]) {
						translate(v = [16.2, -0.75, -1]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 157.5]) {
					translate(v = [-0.5, 0, 0]) {
						translate(v = [16.2, -0.75, -1]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 180.0]) {
					translate(v = [-0.5, 0, 0]) {
						translate(v = [16.2, -0.75, -1]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 202.5]) {
					translate(v = [-0.5, 0, 0]) {
						translate(v = [16.2, -0.75, -1]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 225.0]) {
					translate(v = [-0.5, 0, 0]) {
						translate(v = [16.2, -0.75, -1]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 247.5]) {
					translate(v = [-0.5, 0, 0]) {
						translate(v = [16.2, -0.75, -1]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 270.0]) {
					translate(v = [-0.5, 0, 0]) {
						translate(v = [16.2, -0.75, -1]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 292.5]) {
					translate(v = [-0.5, 0, 0]) {
						translate(v = [16.2, -0.75, -1]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 315.0]) {
					translate(v = [-0.5, 0, 0]) {
						translate(v = [16.2, -0.75, -1]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
				rotate(a = [0, 0, 337.5]) {
					translate(v = [-0.5, 0, 0]) {
						translate(v = [16.2, -0.75, -1]) {
							cube(size = [1.5, 1.5, 6]);
						}
					}
				}
			}
		}
	}
	color(alpha = 1.0, c = [0.9, 0, 0]) {
		union() {
			rotate(a = [0, 0, 0.0]) {
				translate(v = [-0.25, 0, 0]) {
					translate(v = [16.2, -0.5, 0]) {
						cube(size = [1, 1, 4]);
					}
				}
			}
			rotate(a = [0, 0, 22.5]) {
				translate(v = [-0.25, 0, 0]) {
					translate(v = [16.2, -0.5, 0]) {
						cube(size = [1, 1, 4]);
					}
				}
			}
			rotate(a = [0, 0, 45.0]) {
				translate(v = [-0.25, 0, 0]) {
					translate(v = [16.2, -0.5, 0]) {
						cube(size = [1, 1, 4]);
					}
				}
			}
			rotate(a = [0, 0, 67.5]) {
				translate(v = [-0.25, 0, 0]) {
					translate(v = [16.2, -0.5, 0]) {
						cube(size = [1, 1, 4]);
					}
				}
			}
			rotate(a = [0, 0, 90.0]) {
				translate(v = [-0.25, 0, 0]) {
					translate(v = [16.2, -0.5, 0]) {
						cube(size = [1, 1, 4]);
					}
				}
			}
			rotate(a = [0, 0, 112.5]) {
				translate(v = [-0.25, 0, 0]) {
					translate(v = [16.2, -0.5, 0]) {
						cube(size = [1, 1, 4]);
					}
				}
			}
			rotate(a = [0, 0, 135.0]) {
				translate(v = [-0.25, 0, 0]) {
					translate(v = [16.2, -0.5, 0]) {
						cube(size = [1, 1, 4]);
					}
				}
			}
			rotate(a = [0, 0, 157.5]) {
				translate(v = [-0.25, 0, 0]) {
					translate(v = [16.2, -0.5, 0]) {
						cube(size = [1, 1, 4]);
					}
				}
			}
			rotate(a = [0, 0, 180.0]) {
				translate(v = [-0.25, 0, 0]) {
					translate(v = [16.2, -0.5, 0]) {
						cube(size = [1, 1, 4]);
					}
				}
			}
			rotate(a = [0, 0, 202.5]) {
				translate(v = [-0.25, 0, 0]) {
					translate(v = [16.2, -0.5, 0]) {
						cube(size = [1, 1, 4]);
					}
				}
			}
			rotate(a = [0, 0, 225.0]) {
				translate(v = [-0.25, 0, 0]) {
					translate(v = [16.2, -0.5, 0]) {
						cube(size = [1, 1, 4]);
					}
				}
			}
			rotate(a = [0, 0, 247.5]) {
				translate(v = [-0.25, 0, 0]) {
					translate(v = [16.2, -0.5, 0]) {
						cube(size = [1, 1, 4]);
					}
				}
			}
			rotate(a = [0, 0, 270.0]) {
				translate(v = [-0.25, 0, 0]) {
					translate(v = [16.2, -0.5, 0]) {
						cube(size = [1, 1, 4]);
					}
				}
			}
			rotate(a = [0, 0, 292.5]) {
				translate(v = [-0.25, 0, 0]) {
					translate(v = [16.2, -0.5, 0]) {
						cube(size = [1, 1, 4]);
					}
				}
			}
			rotate(a = [0, 0, 315.0]) {
				translate(v = [-0.25, 0, 0]) {
					translate(v = [16.2, -0.5, 0]) {
						cube(size = [1, 1, 4]);
					}
				}
			}
			rotate(a = [0, 0, 337.5]) {
				translate(v = [-0.25, 0, 0]) {
					translate(v = [16.2, -0.5, 0]) {
						cube(size = [1, 1, 4]);
					}
				}
			}
		}
	}
	translate(v = [-2.0, 14.5, 0]) {
		rotate(a = [90, 0, 0]) {
			cube(size = [4, 4, 1]);
		}
	}
}
