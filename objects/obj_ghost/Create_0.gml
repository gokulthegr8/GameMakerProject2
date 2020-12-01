/// @description Insert description here
// You can write your code in this editor
ghflag = true;
camera = instance_create_layer(x,y,"IL_Player",obj_camera)
//camera.updateCamera(id,25,650,360)
//camera.set()
light = instance_create_layer(x,y,"IL_Light",obj_light)
light.ConeAngle = .8
light.Strength= 150;
myName="Ghost"
myText1[0]="Hey I am Ghost. Dont be scared of me."
myText1[1]="I need your help with something. You need to find the cup for me"

myText2[0]="Oh you brought the cup. Thank you so much!"
myText2[1]="I can do a favor for you now. I will go ahead and switch on the lever to exit this room for you."
myText2[2]="Press R when near me to take control of me."