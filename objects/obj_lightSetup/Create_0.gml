/// @description Insert description here
// You can write your code in this editor
lighting_surface = -1
x_offSet = 0
y_offSet = 0
surface_width=650
surface_height=360
//shd light
u_z = shader_get_uniform(shd_light,"u_z")

u_color = shader_get_uniform(shd_light,"u_color")

u_pos = shader_get_uniform(shd_light,"u_pos")
u_lpos = shader_get_uniform(shd_light,"u_lpos")

u_coneAngle = shader_get_uniform(shd_light,"u_coneAngle")
u_strength = shader_get_uniform(shd_light,"u_strength")

//shd shadow
u_pos2 = shader_get_uniform(shd_shadow,"u_pos")
u_z2 = shader_get_uniform(shd_shadow,"u_z")

vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();
vb = vertex_create_buffer();
