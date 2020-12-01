/// @description Insert description here
// You can write your code in this editor
camera = instance_create_layer(x,y,"IL_Player",obj_camera)
camera.updateCamera(id,25,650,360)
camera.set()
ghflag = false;
light = instance_create_layer(x,y,"IL_Light",obj_light)
light.ConeAngle = .8
light.Strength= 150;
myTextBox=noone
boolCup=false
boolDoor=false
myName="Player"