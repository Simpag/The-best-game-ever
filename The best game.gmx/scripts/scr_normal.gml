///scr_normal
scr_inputs();




if (key_right) || (key_left*(-1)) || (key_jump) || (key_down) {
    state = states.movement;
    idle = false;
}

if (key_melee) {
    state = states.melee;
    idle = false;
}

//No code under this
scr_collision();

if (idle == false) {
    alarm[1] = 10 * room_speed;
    idle = true;
}
