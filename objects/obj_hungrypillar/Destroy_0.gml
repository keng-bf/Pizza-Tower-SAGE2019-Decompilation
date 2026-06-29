if (ds_list_find_index(global.saveroom, id) == -1 && global.snickchallenge == 0)
{
    scr_soundeffect(sfx_escaperumble);
    obj_camera.alarm[1] = 60;
    instance_create(x, y, obj_bangeffect);
	repeat 3
	{
		instance_create(x, y, obj_slapstar);
		instance_create(x, y, obj_baddiegibs);
	}
    
    with (obj_camera)
    {
        shake_mag = 3;
        shake_mag_acc = 3 / room_speed;
    }
    
    instance_destroy();
    
    with (instance_create(x, y, obj_baddie_dead))
        sprite_index = spr_hungrypillar_dead;
    
    scr_soundeffect(sfx_killenemy);
    instance_create(x, y + 600, obj_itspizzatime);
    global.panic = 1;
    var _room =
	[
		[medieval_10, 2, 15],
		[ruin_11, 3, 30],
		[dungeon_10, 3, 30],
	]
	for (var i = 0; i < array_length(_room);i++)
	{
		var b = _room[i]
		if b[0] = room
		{
            global.minutes = b[1];
            global.seconds = b[2];
			break
		}
	};
    
    global.wave = 0;
    global.maxwave = ((global.minutes * 60) + global.seconds) * 60;
    
    if (global.panicbg)
        scr_panicbg_init();
    
    ds_list_add(global.saveroom, id);
}
