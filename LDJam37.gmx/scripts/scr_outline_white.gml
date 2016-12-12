draw_sprite_ext(sprite_index, image_number-1, x+1, y, sign(image_xscale), image_yscale, 0, c_white, 1);
draw_sprite_ext(sprite_index, image_number-1, x-1, y, sign(image_xscale), image_yscale, 0, c_white, 1);
draw_sprite_ext(sprite_index, image_number-1, x, y+1, sign(image_xscale), image_yscale, 0, c_white, 1);
draw_sprite_ext(sprite_index, image_number-1, x, y-1, sign(image_xscale), image_yscale, 0, c_white, 1);
draw_self();
