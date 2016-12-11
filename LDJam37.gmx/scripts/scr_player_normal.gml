//scr_getvariables();

scr_getinputs();

//React to Input
hsp = movespeed * (key_left + key_right);
vsp += 0.2;

// Animations and make the player face the proper direction
image_speed = .2;
if (hsp < 0){
    sprite_index = spr_player_walk;
    image_xscale = 1;
} else if (hsp > 0){
    sprite_index = spr_player_walk;
    image_xscale = -1;
} else {
    sprite_index = spr_player_idle;
}

// Jumping!
if (key_jump && jump_count < 2){
    jump_count++;
    vsp = -5;
} else if (jump_count > 0 && place_meeting(x,y+1,obj_floor_invis)) {
  jump_count = 0;
}

scr_collideandmove();
