if (room == rank_room || room == timesuproom || room == Realtitlescreen)
    visible = false;
else
    visible = true;
	
if (global.panic && start == 0)
{
    alarm[0] = 5;
    start = 1;
}

if (global.panic == 0)
    alarm[0] = -1;

if (global.combo >= 10)
{
    global.SAGEcombo10 = 1;
    ini_open("saveData.ini");
    ini_write_string("SAGE2019", "combo10", 1);
    ini_close();
}

if (global.seconds <= 0 && global.minutes <= 0 && ded == 0)
{
    alarm[1] = -1;
    alarm[2] = 3;
    audio_stop_all();
    ded = 1;
}

if (global.seconds < 0)
{
    global.seconds = 59;
    global.minutes -= 1;
}

if (global.seconds > 59)
{
    global.minutes += 1;
    global.seconds -= 59;
}

if ((global.panic && global.minutes < 1) || obj_player.sprite_index == spr_player_timesup)
{
    shake_mag = 2;
    shake_mag_acc = 3 / room_speed;
}
else if (global.panic && basement == 0)
{
    shake_mag = 2;
    shake_mag_acc = 3 / room_speed;
}

if (shake_mag > 0)
{
    shake_mag -= shake_mag_acc;
    
    if (shake_mag < 0)
        shake_mag = 0;
}

if (instance_exists(obj_player) && obj_player.state != 35 && obj_player.state != 54)
{
    var target = obj_player;
    
    if (obj_player.state == 89 || obj_player.state == 36)
    {
        if (chargecamera > (obj_player.xscale * 100))
            chargecamera -= 2;
        
        if (chargecamera < (obj_player.xscale * 100))
            chargecamera += 2;
        
        __view_set(0, 0, (target.x - (__view_get(2, 0) / 2)) + chargecamera);
    }
    else
    {
        if (chargecamera > 0)
            chargecamera -= 2;
        
        if (chargecamera < 0)
            chargecamera += 2;
        
        __view_set(0, 0, (target.x - (__view_get(2, 0) / 2)) + chargecamera);
    }
    
    __view_set(0, 0, clamp(__view_get(0, 0), 0, room_width - __view_get(2, 0)));
    __view_set(1, 0, target.y - (__view_get(3, 0) / 2));
    __view_set(1, 0, clamp(__view_get(1, 0), 0, room_height - __view_get(3, 0)));
    
    if (shake_mag != 0)
    {
        __view_set(0, 0, (target.x - (__view_get(2, 0) / 2)) + chargecamera);
        __view_set(0, 0, clamp(__view_get(0, 0), 0, room_width - __view_get(2, 0)));
        __view_set(1, 0, (target.y - (__view_get(3, 0) / 2)) + irandom_range(-shake_mag, shake_mag));
        __view_set(1, 0, clamp(__view_get(1, 0), 0 + irandom_range(-shake_mag, shake_mag), (room_height - __view_get(3, 0)) + irandom_range(-shake_mag, shake_mag)));
    }
}
