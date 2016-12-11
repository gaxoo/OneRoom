//scr_getvariables();

scr_getinputs();

//React to Input
hsp = movespeed * (key_left + key_right);

vsp += 0.2;
if (place_meeting(x,y+1,obj_solid))
{
    if (key_jump) vsp = -5;
}

//Animate
if (hsp!=0) image_xscale = 1;
if (place_meeting(x,y+1,obj_solid))
{
    if (hsp!=0) sprite_index = spr_player_run; else state = states.idle;
}
else
{
    if (vsp < 0) sprite_index = spr_player_jump; //else sprite_index = spr_player_fall;
    image_speed = .2;
}

scr_collideandmove();
