///Add clickables
oneone = 0;
twotwo = 0;
threethree = 0;
fourfour = 0;
var divd, one, two, three, four;
if (menuText[menuPage,0] == 1) { divd = 2 } else { divd = menuText[menuPage,0] }

if (menuText[menuPage,0] == 1) {
    oneone = string_length(string(menuText[menuPage,1])) * 1.6;

    one = instance_create(room_width/2, room_height/divd+(1*1.5*font_size), obj_menuselected_1);
    with(one) { image_xscale = cont_menu.oneone }
}
if (menuText[menuPage,0] == 2) {
oneone = string_length(string(menuText[menuPage,1])) * 1.6;
twotwo = string_length(string(menuText[menuPage,2])) * 1.6;

    one = instance_create(room_width/2, room_height/divd+(1*1.5*font_size), obj_menuselected_1);
    with(one) { image_xscale = cont_menu.oneone }
    two = instance_create(room_width/2, room_height/divd+(2*1.5*font_size), obj_menuselected_2);
    with(two) { image_xscale = cont_menu.twotwo }
}
if (menuText[menuPage,0] == 3) {  
    oneone = string_length(string(menuText[menuPage,1])) * 1.6;
    twotwo = string_length(string(menuText[menuPage,2])) * 1.6;
    threethree = string_length(string(menuText[menuPage,3])) * 1.6;

    one = instance_create(room_width/2, room_height/divd+(1*1.5*font_size), obj_menuselected_1);
    with(one) { image_xscale = cont_menu.oneone }
    two = instance_create(room_width/2, room_height/divd+(2*1.5*font_size), obj_menuselected_2);
    with(two) { image_xscale = cont_menu.twotwo }
    three = instance_create(room_width/2, room_height/divd+(3*1.5*font_size), obj_menuselected_3);
    with(three) { image_xscale = cont_menu.threethree }
}
if (menuText[menuPage,0] == 4) {
    oneone = string_length(string(menuText[menuPage,1])) * 1.6;
    twotwo = string_length(string(menuText[menuPage,2])) * 1.6;
    threethree = string_length(string(menuText[menuPage,3])) * 1.6;
    fourfour = string_length(string(menuText[menuPage,4]))  * 1.6;

    one = instance_create(room_width/2, room_height/divd+(1*1.5*font_size), obj_menuselected_1);
    with(one) { image_xscale = cont_menu.oneone }
    two = instance_create(room_width/2, room_height/divd+(2*1.5*font_size), obj_menuselected_2);
    with(two) { image_xscale = cont_menu.twotwo }
    three = instance_create(room_width/2, room_height/divd+(3*1.5*font_size), obj_menuselected_3);
    with(three) { image_xscale = cont_menu.threethree }
    four = instance_create(room_width/2, room_height/divd+(4*1.5*font_size), obj_menuselected_4);
    with(four) { image_xscale = cont_menu.fourfour }
}
