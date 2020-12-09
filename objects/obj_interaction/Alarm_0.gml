/// @description Insert description here
// You can write your code in this editor

var trig = true;
for(i = 0; i < Dependent_Names_Count; i ++){
	trig = trig * ls_dependent_assets[i].triggered;
}
dependents_triggered = trig;
alarm[0] = room_speed/4;