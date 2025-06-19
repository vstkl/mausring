debug = False
should_render = False
filename = "body-refactor"

# define base dimensions
# ring size
base_r = 15.3
# height of the ring
base_d = 4
# width of ring material
base_w = 1
# gap between inner and outer circle
gap = 1
# manufacturing tolerance
tolerance = 0
switch_mat_w = 0.1
cut = 0.5
lip = 0.2
lip_a = 0.2
lip_b = 0.2
mag_count = 16
base_inner_r = base_r-base_w
mag_a = 1
mag_b = base_d
mag_cut_a = mag_a + cut
mag_cut_b = mag_b + 2
chip_esp_a =  4
chip_esp_b =  1
chip_esp_cut_a = chip_esp_a + 2*cut

# minimal width of material for cutouts etc.
material_min = 0.2
switch_base_offset = 5

inner_r,inner_d,inner_w = [base_r,base_d,base_w]
outer_r,outer_d,outer_w = [inner_r+inner_w+gap,inner_d,inner_w]
switch_base_r,switch_base_d,switch_base_w = [base_r+switch_base_offset,base_d,switch_mat_w]
#if outer_<= mag_a:
outer_r += material_min
outer_w += material_min

obj = []