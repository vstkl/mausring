// https://www.ufinebattery.com/images/upload/ufx0947-13-3-7v-20mah-special-shaped-battery-ufxUFX0947-13product-datasheet.pdf
$fn  =100;
color("gray")rotate_extrude(angle=90){

union(){
	//scale([2,1,1]) square(10,10);

	translate([21,0,0])rotate([0,0,90])scale([7,1.5,1.5]) square(1,1);
	}
}
translate([-2,20.5,4])cube([2,0.1,1.5]);
translate([-2,20.5,1])cube([2,0.1,1.5]);
color("black")translate([19.4,0.15,1])rotate([0,-90,0])scale([0.1,0.1,0.1])text("150732");
color("black")translate([19.4,1.45,1])rotate([0,-90,3])scale([0.1,0.1,0.1])text("ufine");