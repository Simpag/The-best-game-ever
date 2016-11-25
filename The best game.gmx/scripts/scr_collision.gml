///scr_collision

//Add gravity
// if vertical speed is less than 10, add the gravity to it.
if (vsp < 10) vsp += grav;

//horizontal collision
if (place_meeting(x+hsp, y, obj_ground)) { //if the object will collide when he adds the hsp to his x cord
//sign returns 1, -1 or 0. if its 324 its 1 and -324 its -1 or 0 its 0. 
    while(!place_meeting(x+sign(hsp), y, obj_ground)) { //So if its not hitting the wall now, add either 1 or -1 to x until it hits the wall
        x += sign(hsp); //add the 1 or -1 to the x cord
    }     
    hsp = 0;  //when the while loop ends, the player hits the wall. Make the hsp = 0 so the player stops moving and dsnt go through the wall
}

//vertical collision
if (place_meeting(x, y + vsp, obj_ground)){ //if its on the ground
    while(!place_meeting(x, y + sign(vsp), obj_ground)) { //when its not on the ground
        y += sign(vsp); //same as the hs collision
    }
    vsp = 0;       
}


//Reseting wall jumps
if ((!place_meeting(x+6, y, obj_ground)) && (!place_meeting(x-6, y, obj_ground))) || (place_meeting(x, y + 1, obj_ground)){
    wjumps = wjumpsmax;
}

//Write movement code above this
x += hsp //Add the hsp to x to move the player
y += vsp //Same as the x position but with vertical speed.
