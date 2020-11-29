up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))

left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))

moveh = right - left;
movev = down - up;

x += moveh
y += movev


light.x = x;
light.y = y;
light.updateAngle(point_direction(light.x, light.y, mouse_x, mouse_y),light.ConeAngle)