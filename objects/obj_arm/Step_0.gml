/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(x,y,light.look_x, light.look_y)

x = obj_player.x
y = obj_player.y
show_debug_message(light.look_x - light.x)
light.x = x + (light.look_x - light.x) * sprite_width - 5
light.y = y + (light.look_y - light.y) * sprite_width - 5

light.updateAngle(point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y),light.ConeAngle)