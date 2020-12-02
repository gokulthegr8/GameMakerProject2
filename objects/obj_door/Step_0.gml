/// @description Insert description here
// You can write your code in this editor
//Code for Door Interaction
if(place_meeting(x,y,obj_player)){
	if(keyboard_check_pressed(ord("E"))){
		if(obj_player.boolDoor==false){
	if(myTextBox==noone){
	myTextBox=instance_create_layer(x,y,"Text",obj_textbox)
	myTextBox.text=myText1
	myTextBox.creator=obj_player
	myTextBox.name=myName
	//abc
	show_debug_message("this is called")
	obj_player.ghflag=!obj_player.ghflag;
	with(obj_lever){	
	obj_player.camera.updateCamera(id,25,650,360)
	obj_player.camera.set()
	obj_player.boolLever=true
	}
	obj_player.alarm[0]=room_speed*5;
	//abc
	}
}
else{
	if(myTextBox==noone){
	myTextBox=instance_create_layer(x,y,"Text",obj_textbox)
	myTextBox.text=myText2
	myTextBox.creator=obj_player
	myTextBox.name=myName
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