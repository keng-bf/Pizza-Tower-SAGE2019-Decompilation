if (selected == 0)
{
	scr_getinput()
    
    if (keyboard_check_pressed(vk_f5))
    {
        instance_create(0, 0, obj_manual);
        selected = 1;
    }
	
	var _move = key_right2 - -key_left2
	if _move != 0
	{
		optionselected += _move
		optionselected = clamp(optionselected, 0, 2)
        scr_soundeffect(sfx_step);
    }
    
	if key_jump
	{
		scr_soundeffect(sfx_collecttoppin);
		selected = 1;
		switch optionselected
		{
			case 0:
				obj_file1.sprite_index = spr_file1confirm;
				alarm[optionselected] = 60;
			break
		
			case 1:
				alarm[optionselected] = 5;
			break
		
			case 2:
				alarm[optionselected] = 5;
			break
		}
    }
}

var lay_id = layer_get_id("Backgrounds_2");
var back_id = layer_background_get_id(lay_id);
layer_background_index(back_id, optionselected);
