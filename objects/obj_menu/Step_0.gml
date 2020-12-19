var move=0;
move-=max(keyboard_check_pressed(ord("W")),keyboard_check_pressed(vk_up));
move+=max(keyboard_check_pressed(ord("S")),keyboard_check_pressed(vk_down));

if(move!=0){
	audio_play_sound(snd_leverOn,0,0)
	mpos+=move;
	if(mpos<0)
	mpos=array_length_1d(options)-1;
	if(mpos>array_length_1d(options)-1)
	mpos=0;
}
var push;
push=max(keyboard_check_released(vk_space),keyboard_check_released(vk_enter));
if(push==1)
s_menu();