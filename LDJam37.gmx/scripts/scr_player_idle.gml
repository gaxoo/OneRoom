image_index = spr_player_idle;

scr_input();

image_speed = .2;

if (hsp != 0)
{
    sprite_index = spr_player_walk;
    state = states.normal;
}
