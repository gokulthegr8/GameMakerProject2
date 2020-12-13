/// @description Insert description here
// You can write your code in this editor
if(!surface_exists(ghost_surface)){
	ghost_surface = surface_create(2600, 1440)
}

var _surface = ghost_surface
var _x_offSet = x_offSet
var _y_offSet = y_offSet

var _u_offset = u_offset
var _u_alpha = u_alpha

shader_set(shd_basic)
shader_set_uniform_f(_u_offset,_x_offSet,_y_offSet)
shader_set_uniform_f(_u_alpha,.1) //-1 disables alpha overwrite
surface_set_target(_surface)

gpu_set_blendmode_ext(bm_one, bm_inv_dest_alpha);
with(obj_graphics_ghost){
	draw_self()
}
gpu_set_blendmode_ext(bm_zero,bm_inv_src_alpha);
shader_set_uniform_f(_u_alpha,.03)
draw_rectangle(0,0,2600,1440,0)

gpu_set_blendmode(bm_normal)
shader_reset()
surface_reset_target()
draw_surface(_surface, _x_offSet,_y_offSet)