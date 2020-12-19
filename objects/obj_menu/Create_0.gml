options[0]="New Game"
options[1]="How to Play"
options[2]="Exit Game"

space=64;

mpos=0;
//newfont = font_add("Arial", 24, true, true, 32, 128);
score=0;
camera = instance_create_layer(x,y,"Instances_1",obj_camera)
camera.updateFollow(id)
camera.updateCamera(25,650,360)
camera.set()
//window_set_fullscreen(true)