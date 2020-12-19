/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("R"))){ 
	audio_stop_all()
	room_restart()
}
if(keyboard_check_pressed(ord("N"))){
	audio_stop_all()
	room_goto_next()
}
if(keyboard_check_pressed(ord("J"))) obj_player.Jump=12
if(keyboard_check_pressed(ord("H"))) __dnd_health=80
if(keyboard_check_pressed(ord("L"))) {
	if(obj_player.boolLever==false)
	obj_player.boolLever=true
	else
	obj_player.boolLever=false
}