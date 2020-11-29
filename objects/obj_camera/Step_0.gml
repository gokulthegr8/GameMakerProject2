/// @description Insert description here
// You can write your code in this editor
x += (xTo-x) / 7.0;
y += (yTo-y) / 7.0;

if(Follow != noone && instance_exists(obj_player)){
	xTo = ((abs(Follow.x - x) > Bound) * (Follow.x - (sign(Follow.x - x) * Bound))) + 
		   ((abs(Follow.x - x) <= Bound) * x)
	yTo = Follow.y;
}

//var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera, matrix_build_lookat(x,y,-10,x,y,0,0,1,0));