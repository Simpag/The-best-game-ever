///scr_jump
if (place_meeting(x, y+1, obj_ground)) { //Normal ground jumping
    vsp = -jumpspeed;
    audio_play_sound(snd_player_jump,1,0);
}

if (place_meeting(x+5, y, obj_ground) || place_meeting(x-5, y, obj_ground)) && (wjumps > 0) && (!place_meeting(x, y + 1, obj_ground)) && (wjumpsd == 0) {  
    wjumps -= 1;
    vsp = -jumpspeed;
    audio_play_sound(snd_player_jump,1,0);
}

if (state != states.normal) state = states.normal;
