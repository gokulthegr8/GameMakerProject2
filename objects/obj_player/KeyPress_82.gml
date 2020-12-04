/// @description Insert description here
// You can write your code in this editor

	if(boolCup==true){
	if distance_to_object(obj_ghost) < 20
   {
	show_debug_message("this is called")
	ghflag=!ghflag;
	camera.updateFollow(obj_ghost.id);
	with(obj_ghost){
	ghflag=!ghflag;
	}
    }
}