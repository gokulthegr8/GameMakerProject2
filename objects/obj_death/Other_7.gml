/// @description Insert description here
// You can write your code in this editor
if(obj_game_controller.__dnd_lives>0){
	
obj_game_controller.__dnd_lives=obj_game_controller.__dnd_lives-1
show_debug_message("lives left "+ string(obj_game_controller.__dnd_lives))
}