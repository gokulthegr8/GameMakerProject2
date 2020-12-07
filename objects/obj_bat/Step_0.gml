/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player))
{
	if(distance_to_object(obj_player)<10)
	{
		obj_game_controller.__dnd_health -=2
	}
}