/// @description Insert description here
// You can write your code in this editor
if(!surface_exists(lighting_surface)){
	lighting_surface = surface_create(1300, 720)
}

var _x_offSet = x_offSet
var _y_offSet = y_offSet

var _lighting_surface = lighting_surface

var _u_color = u_color

var _u_pos = u_pos
var _u_lpos = u_lpos

var _u_coneAngle = u_coneAngle
var _u_strength = u_strength


var _u_pos2 = u_pos2
var _vb = vb

var _u_z = u_z
var _u_z2= u_z2

surface_set_target(_lighting_surface)
draw_clear_alpha(c_black,.95);

gpu_set_ztestenable(1)
gpu_set_zwriteenable(1)
var _z = 0
with(obj_light){
	shader_set(shd_shadow)
	shader_set_uniform_f(_u_pos2,x-_x_offSet,y-_y_offSet)
	shader_set_uniform_f(_u_z2,_z)
	vertex_submit(_vb,pr_trianglelist,-1)
	
	shader_set(shd_light)
	shader_set_uniform_f(_u_pos,x-_x_offSet,y-_y_offSet)
	shader_set_uniform_f(_u_lpos,look_x-_x_offSet,look_y-_y_offSet)
	shader_set_uniform_f(_u_coneAngle,ConeAngle)
	shader_set_uniform_f(_u_strength,Strength)
	shader_set_uniform_f(_u_color,R,G,B)
	shader_set_uniform_f(_u_z,_z)
	
	gpu_set_blendmode(bm_add);
	//gpu_set_blendmode_ext(bm_src_alpha, bm_one)
	draw_rectangle(0,0,640,360,0)
	gpu_set_blendmode(bm_subtract)
	//gpu_set_blendmode_ext(bm_zero,bm_inv_src_alpha)
	shader_set_uniform_f(_u_color,0,0,0)
	draw_rectangle(0,0,640,360,0)
	
	gpu_set_blendmode(bm_normal)
	_z --
}

shader_reset()
gpu_set_ztestenable(0)
gpu_set_zwriteenable(0)

surface_reset_target()
draw_surface(_lighting_surface, _x_offSet,_y_offSet)