// INPUT
var right_key = keyboard_check(vk_right);
var left_key  = keyboard_check(vk_left);
var up_key    = keyboard_check(vk_up);
var down_key  = keyboard_check(vk_down);

// MOVIMENTO
var xspd = (right_key - left_key) * move_spd;
var yspd = (down_key - up_key) * move_spd;

// MOVIMENTO EM X COM COLISÃO
if (!place_meeting(x + xspd, y, objParede)) {
    x += xspd;
} else {
    while (xspd != 0 && !place_meeting(x + sign(xspd), y, objParede)) {
        x += sign(xspd);
    }
}

// MOVIMENTO EM Y COM COLISÃO
if (!place_meeting(x, y + yspd, objParede)) {
    y += yspd;
} else {
    while (yspd != 0 && !place_meeting(x, y + sign(yspd), objParede)) {
        y += sign(yspd);
    }
}

// SPRITE E DIREÇÃO
if (xspd != 0 || yspd != 0) {
    sprite_index = pAndando;

    // Inverter sprite horizontalmente
    if (xspd > 0) {
        image_xscale = 1;
    } else if (xspd < 0) {
        image_xscale = -1;
    }

} else {
    sprite_index = pParado;
}
