/// @description Insert description here
// You can write your code in this editor
xdir = obj_player.x - x;
ydir = obj_player.y - y;
onGround = grounded(id);
player_onGround = grounded(obj_player)

function findePad(){
	var _pad = -1;
	var _x = x
	var _y = y
	var _xdir = sign(xdir)
	with(obj_bossPad){
		sx = 0
		if(y < _y + 20 && y > _y - 20  && _xdir == jump_dir){
			_pad = id;
		}
	}
	return _pad;
}

if(player_onGround){
	if(ydir < -12 && onGround || doJump){
		if(state != "jump") {current_pad = findePad()}
		
		if(current_pad == -1){
			state = "follow"
		}else{
			state = "jump"
		}
		
		
	}else if(ydir > -4){
		if(state != "fall") { fall_direction = sign(xdir)}
		state = "fall"
	}else{
		state = "follow"
	}
}else{
	state = "follow"
}

if(doJump && state = "follow"){
	doJump = false;
	current_pad = -1;
}

switch(state){
	case "follow":
		hsp = wlksp * sign(xdir);
	break;
	case "jump":
		if(doJump){
			hsp = current_pad.jump_dir * wlksp
		}else{
			paddir = sign(current_pad.x - x)
			hsp = sign((current_pad.x - (current_pad.jump_dir * 10)) - x) * wlksp
			if(current_pad.jump_dir == paddir){
				hsp = paddir * wlksp
				if(sign(xdir) != paddir){
					current_pad = findePad()
				}else{
					if(place_meeting(x,y,current_pad)){
						doJump = true;
					}
				}
			}
		}
	break;
	case "fall":
		hsp = fall_direction
		if(hsp>0){
			state = "follow"
		}
	break;
}

jumph = 0
if(doJump){
	jumph = current_pad.jump_height
}

vsp = (!(onGround && vsp>0) * vsp)
vsp += (!onGround * grv) + (-doJump * jumph * onGround * (vsp >= 0))
arrSpeeds = collideMove(id,vsp,hsp)
vsp = arrSpeeds[0]
hsp = arrSpeeds[1]

show_debug_message("---")
show_debug_message(doJump)
show_debug_message(state)

if(doJump && grounded(id)){
	doJump = false;
	current_pad = -1;
	state = "follow"
}