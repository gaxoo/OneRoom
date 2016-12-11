//scr_getvariables();

scr_getinputs();

//React to Input
hsp = movespeed * (key_left + key_right);

vsp += 0.2;

if (key_jump && jump_count < 2){
    jump_count++;
    vsp = -5;
} else if (jump_count > 0 && place_meeting(x,y+1,obj_floor_invis)) {
  jump_count = 0;
}

//Animate
if (hsp!=0) image_xscale = 1;
if (place_meeting(x,y+1,obj_solid))
{
    if (hsp!=0) sprite_index = spr_player_run; else state = states.idle;
}
else
{
    //if (vsp < 0) sprite_index = spr_player_jump; //else sprite_index = spr_player_fall;
    image_speed = .2;
}

scr_collideandmove();
