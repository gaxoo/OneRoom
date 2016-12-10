var hsp_final = hsp + hsp_carry;
hsp_carry = 0;

//Horizontal Collisions
if (place_meeting(x+hsp,y,obj_solid))
{
    while(!place_meeting(x+sign(hsp),y,obj_solid))
    {
        x += sign(hsp_final);
    }
    hsp_final = 0;
    hsp = 0;
}

x += hsp_final;

//Vertical Collisions
if (place_meeting(x,y+vsp,obj_solid))
{
    while(!place_meeting(x,y+sign(vsp),obj_solid))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

y += vsp;
