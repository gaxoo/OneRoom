//Horizontal Collisions
if (place_meeting(x+hsp,y,obj_floor_invis))
{
    while(!place_meeting(x+sign(hsp),y,obj_floor_invis))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

x += hsp;

//Vertical Collisions
if (place_meeting(x,y+vsp,obj_floor_invis))
{
    while(!place_meeting(x,y+sign(vsp),obj_floor_invis))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

y += vsp;

