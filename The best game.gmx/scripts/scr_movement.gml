///scr_move
scr_inputs();

if (key_jump) scr_jump();

if (state != states.melee) if (key_melee) state = states.melee;


/*key left will be either -1 or 0 becuase the key_left = -keyboard....
Key right will be either 1 or 0 brcause the key_right = keyboar....
So its move = -1 + 0 = -1 or
move = 0 + 1 = 1 or
move = 0 + 0 = 0 or
move = -1 + 1 = 0
*/
move = key_left + key_right;

/* hsp = horizontal speed
so movespeed * -1, 1 or 0
*/
var stop = 0.2; //temporary variable for when the player should stop

if move != 0 { //if the player is pressing a button
    facing = move 
    hsp += move * moveincrease; //Move will be either -1 or 1, so multiply 1 or -1 by moveincrease. 
        if ((sign(hsp) == 1) && (hsp > movespeed)) || ((sign(hsp) == -1) && (hsp < -movespeed)) { //If hsp is positive and greater than movespeed, set hsp to movespeed so the player can't move faster than the movespeed. Same for the other side of the ||, but its negative.
            hsp = move * movespeed; //when hsp is more than movespeed, set hsp to movespeed. Move * movespeed is to see if its to the left (-) or to the right (+).
        }
    } else {
        if (hsp != 0) { //If hsp is not equal to 0
            hsp = hsp * movedecrease; //Multiplay hsp with the move decrease speed
                if ((sign(hsp) == 1) && (hsp < stop)) || ((sign(hsp) == -1) && (hsp > -stop)) { //If hsp is positive and is less than stop, make hsp = 0. Same for after the || (or) but for the left negative variable
                        hsp = 0; //Make hsp = 0
                        state = states.normal; //go back to normal state when the player stops
                    }
            }
}

//Player dir facing
image_xscale = facing;

//No code under this
scr_collision();


