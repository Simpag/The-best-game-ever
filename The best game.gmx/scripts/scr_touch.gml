///scr_touch
dHeight = window_get_height();
dWidth = window_get_width();
space = 30;
size = 64;

//Left Side
dJump = virtual_key_add(dWidth - space - size, dHeight - space - size, size, size, ord("W"));
dMelee = virtual_key_add(dWidth - 2 * space - 2 * size, dHeight - space - size, size, size, vk_space);

//Right Side
dLeft = virtual_key_add(space, dHeight - space - size, size, size, ord("A"));
dDown = virtual_key_add(2*space + size, dHeight - space - size, size, size, ord("S"));
dRight = virtual_key_add(3*space + 2*size, dHeight - space - size, size, size, ord("D"));

//Show the keys
virtual_key_show(dMelee);
