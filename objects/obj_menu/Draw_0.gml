draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(fnt_text)
draw_set_color(c_orange)
var m;
for(m=0;m<array_length_1d(options);m+=1){
	draw_text(x+space,y+(m*space),string(options[m]));
}

draw_sprite(sprite_index,0,x+16,y+mpos*space);