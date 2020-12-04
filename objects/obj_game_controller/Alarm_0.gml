/// @description Insert description here
// You can write your code in this editor
alarm_set(0, room_speed*1);

if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;

time = __dnd_health;
if(instance_exists(obj_player))
if(time <= 0)
{
	with(obj_player) {
		
		instance_change(obj_death, true)
	}
} else {
__dnd_health = real(__dnd_health-1);
}
