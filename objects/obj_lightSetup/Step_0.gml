/// @description Insert description here
// You can write your code in this editor
player_exist = instance_exists(obj_player)
function Quad(_vb, _x1, _y1, _x2, _y2){
	vertex_position_3d(_vb,_x1,_y1,0);
	vertex_position_3d(_vb,_x1,_y1,1);
	vertex_position_3d(_vb,_x2,_y2,0);
	
	vertex_position_3d(_vb,_x1,_y1,1);
	vertex_position_3d(_vb,_x2,_y2,0);
	vertex_position_3d(_vb,_x2,_y2,1);
}	




if(player_exist){
	
if(mouse_check_button_pressed(mb_left)){
	light = instance_create_depth(obj_player.x, obj_player.y, depth, obj_light)
	light.R = 0
	light.G = 0
	light.B = 0
}

x_offSet = obj_player.camera.x - (obj_player.camera.Width/2)
y_offSet = obj_player.camera.y - (obj_player.camera.Height/2)


}


var _x_offSet = x_offSet
var _y_offSet = y_offSet

vertex_begin(vb,vf);
var _vb = vb;
with(obj_lightBlock){
	_x = x - _x_offSet
	_y = y - _y_offSet
	Quad(_vb,_x,_y,_x+sprite_width,_y+sprite_height);
	Quad(_vb,_x+sprite_width,_y,_x,_y+sprite_height);
}
vertex_end(vb)