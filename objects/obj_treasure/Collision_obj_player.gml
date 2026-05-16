with (obj_player)
{
    treasure_x = x;
    treasure_y = y;
    treasure_room = room;
    
    if (grounded)
    {
        ds_list_add(global.saveroom, other.id);
        global.treasure = 1;
        hsp = 0;
        vsp = 0;
        
        if (!other.got)
            other.alarm[0] = 150;
        
        if (!other.got)
        {
            state = 22;
            scr_soundeffect(sfx_secretfound);
        }
        
        other.got = true;
        other.x = obj_player.x;
        other.y = obj_player.y - 35;
        other.effectid = instance_create(other.x + 18, other.y, obj_treasureeffect);
        obj_tv.showtext = 1;
        obj_tv.message = "YOU GOT A TOWER SECRET TREASURE!!!";
        obj_tv.alarm[0] = 30;
        other.player = 1;
        ini_close();
    }
}
