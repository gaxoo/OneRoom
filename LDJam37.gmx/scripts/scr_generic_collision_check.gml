for(i = 0; i < array_length_1d(argument_count); i++){

    //Horizontal Collisions
    if (place_meeting(x+hsp,y,argument[i]))
    {
        while(!place_meeting(x+sign(hsp),y,argument[i]))
        {
            x += sign(hsp);
        }
        hsp = 0;
    }
    
    //Vertical Collisions
    if (place_meeting(x,y+vsp,argument[i]))
    {
        while(!place_meeting(x,y+sign(vsp),argument[i]))
        {
            y += sign(vsp);
        }
        vsp = 0;
    }
}
x += hsp;
y += vsp;

