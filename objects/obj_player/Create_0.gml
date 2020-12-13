/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x,y,"IL_Player",obj_arm)

camera = instance_create_layer(x,y,"IL_Player",obj_camera)
camera.updateFollow(id)
camera.updateCamera(25,650,360)
camera.set()

ghflag = false;

myTextBox=noone
boolCup=false
boolDoor=false
myName="Player"
boolLever=false

//Movement
activeSprite = 0;
hsp = 0;
vsp = 0;
grv = .2;
aclsp = 1;
frcsp = 1;
wlksp = 3;