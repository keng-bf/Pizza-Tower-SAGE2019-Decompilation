with (obj_player)
{
    if (room == rank_room)
    {
        x = 480;
        y = 270;
    }
}

obj_camera.visible = false;

if (fadealpha > 1)
{
    fadein = 1;
    
    if (room != rank_room)
        room_goto(rank_room);
}

if (fadein == 0)
    fadealpha += 0.1;
else if (fadein == 1)
    fadealpha -= 0.1;
