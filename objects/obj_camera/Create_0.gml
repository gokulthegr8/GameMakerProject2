/// @description Insert description here
// You can write your code in this editor
camera = camera_create();

xTo = x;
yTo = y;

//Functions
function updateFollow(_Follow){
	Follow = _Follow
}

function updateCamera(_Bound,_Width,_Height){
	camera_set_view_mat(camera, matrix_build_lookat(x,y,-10,x,y,0,0,1,0));
	camera_set_proj_mat(camera, matrix_build_projection_ortho(_Width,_Height,1,10000));
	window_set_size( _Width,_Height);
	
	Width = _Width
	Height = _Height
	Bound = _Bound
}

function set(){
	view_camera[0] = camera;
}
