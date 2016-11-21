lives -= 1 //Remove one life
audio_play_sound(snd_player_lose_life,2,0)
playerHp = 100; //Sets Player hp

if (global.checkpointR == room) { //If the checkpoint exists in the room
    with(obj_player) { //Set the player x and y to the checkpoint
        x = global.checkpointx; //Setting the x to the checkpoint x when spawning.
        y = global.checkpointy; //Setting the y to the checkpoint y when spawning.
    }
} else {
    with(obj_player) { //Set players location to spawnpoint
        x = cont_spawnpoint.x;
        y = (cont_spawnpoint.y)-(sprite_height/2);
    }
}
