///Add clickables
var divd;
if (menuText[menuPage,0] == 1) { divd = 2 } else { divd = menuText[menuPage,0] }
if (menuText[menuPage,0] == 1) {
    instance_create(room_width/2, room_height/divd+(1*1.5*font_size), obj_menuselected_1);
}
if (menuText[menuPage,0] == 2) {
    instance_create(room_width/2, room_height/divd+(1*1.5*font_size), obj_menuselected_1);
    instance_create(room_width/2, room_height/divd+(2*1.5*font_size), obj_menuselected_2);
}
if (menuText[menuPage,0] == 3) {
    instance_create(room_width/2, room_height/divd+(1*1.5*font_size), obj_menuselected_1);
    instance_create(room_width/2, room_height/divd+(2*1.5*font_size), obj_menuselected_2);
    instance_create(room_width/2, room_height/divd+(3*1.5*font_size), obj_menuselected_3);
}
if (menuText[menuPage,0] == 4) {
    instance_create(room_width/2, room_height/divd+(1*1.5*font_size), obj_menuselected_1);
    instance_create(room_width/2, room_height/divd+(2*1.5*font_size), obj_menuselected_2);
    instance_create(room_width/2, room_height/divd+(3*1.5*font_size), obj_menuselected_3);
    instance_create(room_width/2, room_height/divd+(4*1.5*font_size), obj_menuselected_4);
}

//Spawning the volume sliders
if (menuPage == 3) { 
    //Master volume
        if (!instance_exists(obj_master_volume)) instance_create(0,0,obj_master_volume);
    //End of Master volume
        
    //Music Volume
        if (!instance_exists(obj_music_volume)) instance_create(0,0,obj_music_volume);
    //End of Music Volume
    
    //Effects Volume
        if (!instance_exists(obj_effects_volume)) instance_create(0,0,obj_effects_volume);
    //End of effects Volume

} //End of spawning volume sliders


