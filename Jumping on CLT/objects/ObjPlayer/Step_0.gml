right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key);

// colisões
if place_meeting(x + xspd, y, objParede) == true
{
	xspd = 0;
}
if place_meeting(x, y + yspd, objParede) == true
{
	yspd = 0;
}

// mudança de sprite


x += xspd;
y += yspd;