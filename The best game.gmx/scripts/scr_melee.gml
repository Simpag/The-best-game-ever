///scr_melee
scr_inputs();

if (power_up == true) {
    //inster melee animation here
    } else {
    sprite_index = spr_player_melee; //change to melee animation
    image_speed = 8 * (1/room_speed); //Set the animation speed
}

//Creates the hitbox for the player
with (instance_create(x,y,obj_player_melee_hitbox)) { //creates an hitbox instance and keeps the id in the statement
    image_xscale = obj_player.facing;
    with (instance_place(x,y,obj_enemy)) {
        if (hit == 0) {
            hit = 1;
            vsp = -5 * obj_player.facing;
            hsp = sign(x - other.x) * 2;
            image_xscale = sign(hsp);
        }
    }
}

state = states.normal;

//No code under this
scr_collision();
