/// @description Insert description here
// You can write your code in this editor
//if(place_meeting(x,y,obj_player)){
//	instance_create_layer(x,y,"Text",obj_textbox)
//}

up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))

left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))

if(ghflag==false){
camera.updateCamera(id,25,650,360)
camera.set()
moveh = right - left;
movev = down - up;

x += moveh
y += movev


light.x = x;
light.y = y;
light.updateAngle(point_direction(light.x, light.y, mouse_x, mouse_y),light.ConeAngle)
}

