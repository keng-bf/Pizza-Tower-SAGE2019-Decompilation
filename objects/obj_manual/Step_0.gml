scr_getinput()
var _move = key_right2 - -key_left2 
if _move != 0
{
    i += _move;
	i = clamp(i, 0, maxi)
    scr_soundeffect(sfx_step);
}

if (key_slap2 || keyboard_check_pressed(vk_f5) || key_start)
{
    instance_destroy();
    obj_mainmenuselect.selected = 0;
}
