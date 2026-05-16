with (other.id)
{
    if (key_up && (state == 0 || state == 68 || state == 69 || state == 89 || state == 64) && y == (other.y + 50) && !instance_exists(obj_fadeout) && state != 77 && state != 60)
    {
        lastroom_x = other.x;
        lastroom_y = other.y;
        lastroom = room;
        scr_soundeffect(sfx_door);
        obj_camera.chargecamera = 0;
        ds_list_add(global.saveroom, id);
        obj_player.sprite_index = obj_player.spr_lookdoor;
        obj_player.targetDoor = other.targetDoor;
        obj_player.targetRoom = other.targetRoom;
        obj_player.image_index = 0;
        obj_player.state = 77;
        obj_player.mach2 = 0;
        other.visited = 1;
        instance_create(x, y, obj_fadeout);
    }
}
