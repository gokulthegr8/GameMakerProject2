/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E"))){
	obj_player.boolDoor=true
	obj_lever.sprite_index=spr_leverOn
	obj_door.sprite_index=spr_doorOpen
	audio_play_sound(snd_leverOn,0,0)
}