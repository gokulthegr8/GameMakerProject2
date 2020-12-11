// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_inLight(id){
	surface = obj_lightSetup.lighting_surface;
	xoff = obj_lightSetup.x_offSet;
	yoff = obj_lightSetup.y_offSet;
	onScreen = ((id.x - xoff) >= 0 && (id.x - xoff) < obj_lightSetup.surface_width) && 
				((id.y - yoff) > 0 && (id.y - yoff) < obj_lightSetup.surface_height)
	
	if(!surface_exists(surface)){
		return false;
	}
	if(!onScreen){
		return false;
	}
	
	col = surface_getpixel_ext(surface,id.x - xoff, id.y - yoff);
	alpha = (col >> 24) & 255;
	//blue = (col >> 16) & 255;
	//green = (col >> 8) & 255;
	//red = col & 255;
	return alpha < 250
}