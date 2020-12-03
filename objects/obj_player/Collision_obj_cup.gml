/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E"))){
	boolCup=true
	audio_play_sound(snd_pickupLamp,0,0)
	instance_destroy(other)
}