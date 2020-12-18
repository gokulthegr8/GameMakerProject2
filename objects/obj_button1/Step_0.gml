/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();

var tmp = triggered
if(instance_place(x,y,obj_bat_control)&&!triggered){
		
	
	if(Dependent){
		triggered = !triggered * dependents_triggered;
	}else{
		triggered = !triggered;
	}
	
} else {

}

if(tmp != triggered){
	audio_play_sound(Trigger_Sound,0,0)
	can_switch = !can_switch 
	
}

if(triggered){
	sprite_index = Spr_On;
}else{
	sprite_index = Spr_Off;
}