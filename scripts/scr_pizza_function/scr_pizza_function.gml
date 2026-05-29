function scr_music()
{
	var snd = argument[irandom(argument_count - 1)];
	global.music = audio_play_sound(snd, 10, true);
	audio_sound_gain(global.music, 0.6, 1);
}

function scr_soundeffect()
{
	var snd = argument[irandom(argument_count - 1)];
	audio_play_sound(snd, 1, false);
}

function scr_sleep()
{
	var time = current_time;
	var ms = argument0;
	
	do
	{
	}
	until ((current_time - time) >= round(ms));
	
	return current_time - time;
}

function instance_create(argument0, argument1, argument2)
{
	var myDepth = object_get_depth(argument2);
	return instance_create_depth(argument0, argument1, myDepth, argument2);
}

function instance_create_unique(argument0, argument1, argument2)
{
    if (instance_exists(argument2))
        return -4;
    
    var b = instance_create(argument0, argument1, argument2);
    return b;
}

function instance_create_persistent(argument0, argument1, argument2)
{
    if (instance_exists(argument2))
        exit;
    
    with (instance_create(argument0, argument1, argument2))
        persistent = true;
}

function Wave(arg0, arg1, arg2, arg3, arg4 = -4)
{
    var a4 = (arg1 - arg0) * 0.5;
    var t = current_time;
    
    if (arg4 != -4)
        t = arg4;
    
    return arg0 + a4 + (sin((((t * 0.001) + (arg2 * arg3)) / arg2) * (2 * pi)) * a4);
}

function auto_targetdoor()
{
    if (place_meeting(x, y, obj_doorA))
    {
        targetDoor = "A";
    }
    else if (place_meeting(x, y, obj_doorB))
    {
        targetDoor = "B";
    }
    else if (place_meeting(x, y, obj_doorC))
    {
        targetDoor = "C";
    }
    else if (place_meeting(x, y, obj_doorD))
    {
        targetDoor = "D";
    }
    else if (place_meeting(x, y, obj_doorE))
    {
        targetDoor = "E";
    }
}