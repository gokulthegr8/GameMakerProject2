/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var tmp = triggered
if(instance_place(x,y,obj_player) && keyboard_check_pressed(ord("E"))){
	if(Dependent){
		triggered = !triggered * dependents_triggered;
	}else{
		triggered = !triggered;
	}
}

if(tmp != triggered){
	audio_play_sound(Trigger_Sound,0,0)
	if(triggered){
		room_goto_next()
	}
}

if(triggered){
	sprite_index = Spr_On;
}else{
	sprite_index = Spr_Off;
}