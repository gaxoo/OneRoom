collidable_objects[0] = obj_solid;
collidable_objects[1] = obj_movable;

for(i = 0; i < array_length_1d(collidable_objects); i++){

    //Horizontal Collisions
    if (place_meeting(x+hsp,y,collidable_objects[i]))
    {
        while(!place_meeting(x+sign(hsp),y,collidable_objects[i]))
        {
            x += sign(hsp);
        }
        hsp = 0;
    }
    
    //Vertical Collisions
    if (place_meeting(x,y+vsp,collidable_objects[i]))
    {
        while(!place_meeting(x,y+sign(vsp),collidable_objects[i]))
        {
            y += sign(vsp);
        }
        vsp = 0;
    }
}
x += hsp;
y += vsp;

