///scr_normal
scr_inputs();


if (key_right) || (key_left*(-1)) {
    state = states.movement;
    idle = false;
}

if (key_jump) {
    scr_jump();
    idle = false;
}

if (key_melee) {
    state = states.melee;
    idle = false;
}

if (key_pause) {
    state = states.pause
    idle = false;
}

//No code under this
scr_collision();

if (idle == false) {
    alarm[1] = 10 * room_speed;
    idle = true;
}
