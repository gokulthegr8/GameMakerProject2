/// @description Insert description here
// You can write your code in this editor
camera = instance_create_layer(x,y,"IL_Player",obj_camera)
camera.updateFollow(id)
camera.updateCamera(25,650,360)
camera.set()

ghflag = false;
light = instance_create_layer(x,y,"IL_Light",obj_light)
light.ConeAngle = .8

light.Strength= 600;
light.R = 0
light.G = 0
light.B = 0

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