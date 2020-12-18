up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))

left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))
key_space = keyboard_check(vk_space);

if(ghflag==false){
camera.updateFollow(id)

moveh = right - left;
movev = down - up;

//Changes sprite state
activeSprite = moveh * (moveh != 0);
switch(activeSprite){
	case 0:
			sprite_index = spr_player;
		break;
	case 1:
			sprite_index = spr_playermoving;
			image_xscale = 1;
		break;
	case -1:
			sprite_index = spr_playermoving;
			image_xscale = -1;
		break;
}

onGround = grounded(id);
//show_debug_message(boolDoor)
vsp = (!(onGround && vsp>0) * vsp); //<<if on ground set vsp to 0
vsp += (!grounded(id) * grv) + (-key_space * Jump * grounded(id) * (vsp >= 0));

//Xspeed
hsp += moveh * aclsp;
if(sign(hsp) != sign(moveh) && hsp != 0){
	if(sign(hsp + frcsp * sign(hsp) * -1 ) != sign(hsp)){
		hsp = 0;
	}else{
		hsp += frcsp * sign(hsp) * -1;
	}
}

//Cap speed
if(vsp > FallSpeed){vsp = FallSpeed*(sign(vsp))}
if(abs(hsp) > wlksp){hsp = wlksp*(sign(hsp))}


//Cant pass by ref so "colideMove" returns both speeds
arrSpeeds = collideMove(id,vsp,hsp);
vsp = arrSpeeds[0];
hsp = arrSpeeds[1];

if(moveh)
object_set_sprite(obj_player,spr_playermoving)

/*
--------Movement_End
*/
}

//Code for Ghost interaction
if(place_meeting(x,y,obj_ghost)){
	if(keyboard_check_pressed(ord("E"))){
		audio_play_sound(snd_ghost,0,0)
		if(boolCup==false){
	if(myTextBox==noone){
	myTextBox=instance_create_layer(obj_ghost.x,obj_ghost.y,"Text",obj_textbox)
	myTextBox.text=obj_ghost.myText1
	myTextBox.creator=self
	myTextBox.name=obj_ghost.myName
	}
}
else{
	if(myTextBox==noone){
	myTextBox=instance_create_layer(obj_ghost.x,obj_ghost.y,"Text",obj_textbox)
	myTextBox.text=obj_ghost.myText2
	myTextBox.creator=self
	myTextBox.name=obj_ghost.myName
	}
}
}

}
else{
		if(myTextBox != noone){
		instance_destroy(myTextBox)
		myTextBox=noone
		}
	}

	if(instance_exists(obj_bat_control)){
		 if(scr_inLight(obj_bat_control.id) && distance_to_object(obj_bat_control)<50){		 
		   obj_bat_control.image_s=1 
		}
	}
	
	if(instance_exists(obj_bat_fly)){
	with(obj_bat_fly){	
		show_debug_message("Here lies the light")
		//show_debug_message(lig_check)
	  if(distance_to_object(obj_player)>75){
		
		//fly_flag=true;
		//obj_bat_fly.fly=true;
	  }else if(distance_to_object(obj_player)<75 && scr_inLight(id)) {
			if( x > obj_player.x){
				x+=1
			}
			
			if( x < obj_player.x){
				x-=1
			}	
	  
	  }
	 }
	}



