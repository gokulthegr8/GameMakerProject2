/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_text)
draw_set_color(c_white)

 curr_lives = __dnd_lives;
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;

//show_debug_message("Timer: "+ string(time))

draw_text(50, 25, string("Time Left: ") + string(time));

var temp_health = (__dnd_health/80) * 100;

if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(150, 50, 400, 25, temp_health, c_black, c_red, c_lime, 0, true, true)


if(curr_lives <= 0)
{
	draw_text_transformed(room_width/4, room_height/4, "" + string("Game Over Press F to Restart:"), 2, 2, 0);
}
draw_set_halign(fa_left)
draw_text(55, 55, "Score: " + string(score))

