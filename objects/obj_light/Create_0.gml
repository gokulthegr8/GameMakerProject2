/// @description Insert description here
// You can write your code in this editor
look_x = x + 1
look_y = y



//Functions
function updateAngle(dirAngle,coneAngle){
	ConeAngle = coneAngle;
	
	radians = (((dirAngle) % 360) * pi) / 180;
	look_x = cos(radians) + x;
	look_y = -sin(radians) + y;
}