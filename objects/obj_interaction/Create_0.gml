/// @description Insert description here
// You can write your code in this editor
triggered = false;
dependents_triggered = false;
dependents_found = false;

ls_dependent_assets = -1;
function getDependents(){
		var _ls_dependent_assets = -1;
		var _c = 0;
		var _name = "";
		for(i = 1; i <= string_length(Dependent_Names); i ++){
			value = string_char_at(Dependent_Names,i);
			
			if(value == "," || i == string_length(Dependent_Names)){
				if(value != ","){_name += value;}
				
				with(obj_interaction){
					show_debug_message(InstanceName)
					if(InstanceName == _name){
						_ls_dependent_assets[_c] = id;
					}
				}	
				_c ++;
				_name = "";
			}else{
				_name += value;
			}
		}
		ls_dependent_assets = _ls_dependent_assets;
		alarm[0] = room_speed/4;//Updates the dependents_triggered triggere value
}