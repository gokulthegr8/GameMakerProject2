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

if(place_meeting(x,y,obj_ghost)){
	if(keyboard_check_pressed(vk_space)){
	if(myTextBox==noone){
	myTextBox=instance_create_layer(obj_ghost.x,obj_ghost.y,"Text",obj_textbox)
	myTextBox.text=obj_ghost.myText
	myTextBox.creator=self
	myTextBox.name=obj_ghost.myName
	}
}
}
else{
		if(myTextBox != noone){
		instance_destroy(myTextBox)
		myTextBox=noone
		}
	}
