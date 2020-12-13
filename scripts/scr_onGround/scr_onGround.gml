// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function grounded(entity){
	tilemap = layer_tilemap_get_id("TSL_Walls");
	return (tilemap_get_at_pixel(tilemap,entity.bbox_left,entity.bbox_bottom+1)!=0) || 
			(tilemap_get_at_pixel(tilemap,entity.bbox_right,entity.bbox_bottom+1)!=0);
}