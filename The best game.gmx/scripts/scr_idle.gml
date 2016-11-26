///scr_idle
//insert idle sprite here: sprite_index = spr_player_idle
scr_inputs();


if (key_right) || (key_left*(-1)) || (key_down) {
    state = states.normal;
}

if (key_jump) scr_jump();
if (key_melee) scr_melee();

//No code under this
scr_collision();
