/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(x,y,light.look_x, light.look_y)

if(instance_exists(obj_player)){
_image_xscale = obj_player.image_xscale
x = obj_player.x
y = obj_player.y
show_debug_message(light.look_x - light.x)

light.x = x + ((light.look_x - light.x) * sprite_width)
light.y = y + ((light.look_y - light.y) * sprite_width)

show_debug_message(light.look_x)


dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y)
}


switch(_image_xscale){
	case 1:
		if(!(dir < MaxAngle || dir > (360-MaxAngle))){
			dir =	((dir < 180) * MaxAngle) + 
					((dir >= 180) * (360-MaxAngle))
		}
	break
	case -1:
		if(!(dir < MaxAngle+180 && dir > (180-MaxAngle))){
			dir =	((dir < 180) * (180-MaxAngle)) + 
					((dir >= 180) * (MaxAngle+180))
		}
	break
}

light.updateAngle(dir,light.ConeAngle)