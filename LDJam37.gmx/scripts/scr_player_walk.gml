//y = 200;
//image_index = spr_player_walk;
x = x + (hsp);

scr_input();

if (hsp == 0)
{
    sprite_index = spr_player_idle;
    state = states.idle;
}
else if (hsp > 0)
{
    image_xscale = -1;
}
else if (hsp < 0)
{
    image_xscale = 1;
}


