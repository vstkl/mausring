// https://www.ufinebattery.com/images/upload/ufx0947-13-3-7v-20mah-special-shaped-battery-ufxUFX0947-13product-datasheet.pdf
bat_h = 6.2;
bat_w = 1.6;
$fn  =100;
r = 21;
//translate([2,0,0])
union(){
color("gray")rotate_extrude(angle=90){

union(){
	//scale([2,1,1]) square(10,10);

	translate([r,0,0])rotate([0,0,90])scale([bat_h,bat_w,bat_w]) square(1,1);
	}
}
translate([-2,r-1.5,4])cube([2,0.1,bat_w]);
translate([-2,r-1.5,1])cube([2,0.1,bat_w]);
color("black")translate([r-bat_w,0.15,1])rotate([0,-90,0])scale([0.1,0.1,0.1])text("160630");
color("black")translate([r-bat_w-0.1,1.45,1])rotate([0,-90,3])scale([0.1,0.1,0.1])text("ufine");
}