$fn = 200;

union() {
	translate(v = [0, 0, 0]) {
		color(alpha = 1.0, c = [1, 0.1, 0.5]) {
			difference() {
				cylinder(h = 4, r1 = 15, r2 = 15);
				translate(v = [0, 0, -1]) {
					cylinder(h = 6, r1 = 14, r2 = 14);
				}
			}
		}
	}
	translate(v = [0, 0, -2]) {
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
					rotate(a = [0, 0, 18.94736842105263]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
					rotate(a = [0, 0, 37.89473684210526]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
					rotate(a = [0, 0, 56.8421052631579]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
					rotate(a = [0, 0, 75.78947368421052]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
					rotate(a = [0, 0, 94.73684210526316]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
					rotate(a = [0, 0, 113.6842105263158]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
					rotate(a = [0, 0, 132.6315789473684]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
					rotate(a = [0, 0, 151.57894736842104]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
					rotate(a = [0, 0, 170.52631578947367]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
					rotate(a = [0, 0, 189.47368421052633]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
					rotate(a = [0, 0, 208.42105263157896]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
					rotate(a = [0, 0, 227.3684210526316]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
					rotate(a = [0, 0, 246.31578947368422]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
					rotate(a = [0, 0, 265.2631578947368]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
					rotate(a = [0, 0, 284.2105263157895]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
					rotate(a = [0, 0, 303.1578947368421]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
					rotate(a = [0, 0, 322.10526315789474]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
					rotate(a = [0, 0, 341.05263157894734]) {
						translate(v = [-0.5, 0, 0]) {
							translate(v = [16.2, -0.75, -1]) {
								cube(size = [1.5, 1.5, 6]);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 0, -4]) {
		color(alpha = 1.0, c = [0.9, 0, 0]) {
			union() {
				rotate(a = [0, 0, 0.0]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 18.94736842105263]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 37.89473684210526]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 56.8421052631579]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 75.78947368421052]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 94.73684210526316]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 113.6842105263158]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 132.6315789473684]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 151.57894736842104]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 170.52631578947367]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 189.47368421052633]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 208.42105263157896]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 227.3684210526316]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 246.31578947368422]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 265.2631578947368]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 284.2105263157895]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 303.1578947368421]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 322.10526315789474]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
				rotate(a = [0, 0, 341.05263157894734]) {
					translate(v = [-0.25, 0, 0]) {
						translate(v = [16.2, -0.5, 0]) {
							cube(size = [1, 1, 4]);
						}
					}
				}
			}
		}
	}
}
