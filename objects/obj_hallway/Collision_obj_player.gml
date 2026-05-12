with (other.id)
{
    x = other.x;
    y = other.y + (other.sprite_height - 46);
    
    if (!instance_exists(obj_fadeout))
    {
        obj_player1.targetDoor = other.targetDoor;
        obj_player1.targetRoom = other.targetRoom;
        obj_player1.hallway = 1;
        obj_player1.hallwaydirection = other.image_xscale;
        other.visited = 1;
        image_index = 0;
        
        if (state == 70)
            state = 0;
        
        scr_soundeffect(sfx_door);
        instance_create(x, y, obj_fadeout);
    }
}
