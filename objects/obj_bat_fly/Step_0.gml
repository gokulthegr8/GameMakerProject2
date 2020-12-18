
if(distance_to_object(obj_player)>75){
			vspeed = -1;
			if(place_meeting(x,y-1,obj_Test)){
			vspeed=0;
			instance_change(obj_bat_control,false);
			obj_bat_control.image_s=0;
			}
			/*
            vsp=1
	        arrSpeeds = collideMove(id,vsp,0);
		    vsp = -arrSpeeds[0];
		    hsp = arrSpeeds[1];
		    show_debug_message("THe VSPEEED IS :");
		    show_debug_message(vspeed);
		    if(vspeed==0){//check for collision with tile and move to sprite sleep
			vsp=0
			vspeed=0;
			show_debug_message("THe VSPEEED IS :");
		    show_debug_message(vspeed);
			
			instance_change(obj_bat_control,false);
			obj_bat_control.image_s=0;
			//fly_fl=!fly_fl
			}*/

	}



		
		