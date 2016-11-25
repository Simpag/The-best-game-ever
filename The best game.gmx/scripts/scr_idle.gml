///scr_idle
//insert idle sprite here: sprite_index = spr_player_idle
scr_inputs();


if (key_right) || (key_left*(-1)) || (key_down) || (key_jump) || (key_melee) {
    state = states.normal;
}

//No code under this
scr_collision();
