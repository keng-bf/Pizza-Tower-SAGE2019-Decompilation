with (other.id)
{
    x = other.x;
    y = other.y + (other.sprite_height - 46);
    
    if (!instance_exists(obj_fadeout))
    {
        obj_player1.targetDoor = other.targetDoor;
        obj_player1.targetRoom = other.targetRoom;
        other.visited = 1;
        image_index = 0;
        
        if (state == 70)
            state = 0;
        
        instance_create(x, y, obj_fadeout);
    }
}
