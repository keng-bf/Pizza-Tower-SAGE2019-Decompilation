scr_getinput()
var _move = key_down2 - key_up2
var _move2 = key_right2 - -key_left2
if (!instance_exists(obj_keyconfig))
{
    if _move != 0
    {
        optionselected += _move;
        optionselected = clamp(optionselected, 0, 2);
        scr_soundeffect(sfx_step);
    }
}

switch optionselected
{
	case 0:
    if _move2 != 0
    {
        optionsaved_fullscreen += _move;
        optionsaved_fullscreen = clamp(optionsaved_fullscreen, 0, 1);
    }
    
    if key_jump
    {
        window_set_fullscreen(!optionsaved_fullscreen);
        ini_open("saveData.ini");
        ini_write_real("Option", "fullscreen", optionsaved_fullscreen);
        ini_close();
    }
	break
	case 1:
    if _move2 != 0
    {
        optionsaved_resolution += _move;
        optionsaved_resolution = clamp(optionsaved_resolution, 0, 2);
    }
    
    if key_jump
	{
        ini_open("saveData.ini");
        ini_write_real("Option", "resolution", optionsaved_resolution);
        ini_close();
		window_easy_size(optionsaved_resolution)
	}
	break
	case 2:
    if (!instance_exists(obj_keyconfig))
    {
        if (key_jump)
        {
            visible = false;
            instance_create(x, y, obj_keyconfig);
        }
    }
	break
}

if ((key_slap2 || key_start) && !instance_exists(obj_keyconfig))
{
    scr_soundeffect(sfx_enemyprojectile);
    with obj_mainmenuselect selected = 0;
    instance_destroy();
}
