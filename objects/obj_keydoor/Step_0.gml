if ((obj_player.state == 0 || obj_player.state == 68 || obj_player.state == 69 || obj_player.state == 89 || obj_player.state == 64) && sprite_index == spr_doorkey && obj_player.key_up && global.key_inv && place_meeting(x, y, obj_player))
{
    ds_list_add(global.saveroom, id);
    obj_player.state = 63;
    obj_player.image_index = 0;
    image_index = 0;
    sprite_index = spr_doorkeyopen;
    image_speed = 0.35;
    instance_create(x + 50, y + 50, obj_lock);
    global.key_inv = 0;
}

with (obj_player)
{
    if (place_meeting(x, y, obj_keydoor) && other.sprite_index == spr_doorvisited && key_up && (state == 0 || state == 68 || state == 69 || state == 89) && y == (other.y + 50) && !instance_exists(obj_fadeout) && state != 77 && state != 63 && state != 60)
    {
        mach2 = 0;
        image_index = 0;
        obj_camera.chargecamera = 0;
        obj_player.sprite_index = obj_player.spr_lookdoor;
        obj_player.targetDoor = other.targetDoor;
        obj_player.targetRoom = other.targetRoom;
        obj_player.image_index = 0;
        obj_player.state = 77;
        obj_player.mach2 = 0;
        state = 77;
        instance_create(x, y, obj_fadeout);
    }
}

if (floor(image_index) == 2)
    image_speed = 0;

if (floor(obj_player.image_index) == (obj_player.image_number - 1) && obj_player.state == 63)
{
    with (obj_player)
    {
        obj_player.targetDoor = other.targetDoor;
        obj_player.targetRoom = other.targetRoom;
        
        if (!instance_exists(obj_fadeout))
            instance_create(x, y, obj_fadeout);
    }
}

auto_targetdoor