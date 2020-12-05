/// @description Insert description here
// You can write your code in this editor
ghflag = true;
camera = instance_create_layer(x,y,"IL_Player",obj_camera)
//camera.updateCamera(id,25,650,360)
//camera.set()
light = instance_create_layer(x,y,"IL_Light",obj_light)
light.Strength= 150;
light.G = .2

myName="Ghost"
myText1[0]="Hey I am Ghost. Dont be scared of me.."
myText1[1]="I need your help.."
myText1[2]="I am extremely weak right now and I need my lamp to restore my strength.."
myText1[3]="Find and bring the lamp to me and I shall return your favor.."

myText2[0]="Oh you brought the lamp. Thank you so much!!"
myText2[1]="I can do a favor for you now."
myText2[2]="I will help you switch on the lever.."
myText2[3]="Press R when near me to take control of me.."