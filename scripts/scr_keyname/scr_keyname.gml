function scr_keyname()
{
	if (argument0 == vk_left)
	    return "LEFT";
	
	if (argument0 == vk_right)
	    return "RIGHT";
	
	if (argument0 == vk_up)
	    return "UP";
	
	if (argument0 == vk_down)
	    return "DOWN";
	
	if (argument0 == vk_enter)
	    return "ENTER";
	
	if (argument0 == vk_escape)
	    return "ESCAPE";
	
	if (argument0 == vk_space)
	    return "SPACE";
	
	if (argument0 == vk_shift)
	    return "SHIFT";
	
	if (argument0 == vk_control)
	    return "CONTROL";
	
	if (argument0 == vk_alt)
	    return "ALT";
	
	if (argument0 == vk_backspace)
	    return "BACKSPACE";
	
	if (argument0 == vk_tab)
	    return "TAB";
	
	if (argument0 == vk_home)
	    return "HOME";
	
	if (argument0 == vk_end)
	    return "END";
	
	if (argument0 == vk_delete)
	    return "DELETE";
	
	if (argument0 == vk_insert)
	    return "INSERT";
	
	if (argument0 == vk_pageup)
	    return "PAGE UP";
	
	if (argument0 == vk_pagedown)
	    return "PAGE DOWN";
	
	if (argument0 == vk_pause)
	    return "PAUSE";
	
	if (argument0 == vk_printscreen)
	    return "PRINTSCREEN";
	
	if (argument0 == vk_f1)
	    return "F1";
	
	if (argument0 == vk_f2)
	    return "F2";
	
	if (argument0 == vk_f3)
	    return "F3";
	
	if (argument0 == vk_f4)
	    return "F4";
	
	if (argument0 == vk_f5)
	    return "F5";
	
	if (argument0 == vk_f6)
	    return "F6";
	
	if (argument0 == vk_f7)
	    return "F7";
	
	if (argument0 == vk_f8)
	    return "F8";
	
	if (argument0 == vk_f9)
	    return "F9";
	
	if (argument0 == vk_f10)
	    return "F10";
	
	if (argument0 == vk_f11)
	    return "F11";
	
	if (argument0 == vk_f12)
	    return "F12";
	
	if (argument0 == vk_numpad0)
	    return "NUMPAD 0";
	
	if (argument0 == vk_numpad1)
	    return "NUMPAD 1";
	
	if (argument0 == vk_numpad2)
	    return "NUMPAD 2";
	
	if (argument0 == vk_numpad3)
	    return "NUMPAD 3";
	
	if (argument0 == vk_numpad4)
	    return "NUMPAD 4";
	
	if (argument0 == vk_numpad5)
	    return "NUMPAD 5";
	
	if (argument0 == vk_numpad6)
	    return "NUMPAD 6";
	
	if (argument0 == vk_numpad7)
	    return "NUMPAD 7";
	
	if (argument0 == vk_numpad8)
	    return "NUMPAD 8";
	
	if (argument0 == vk_numpad9)
	    return "NUMPAD 9";
	
	if (argument0 == vk_multiply)
	    return "MULTIPLY";
	
	if (argument0 == vk_divide)
	    return "DIVIDE";
	
	if (argument0 == vk_add)
	    return "ADD";
	
	if (argument0 == vk_subtract)
	    return "SUBSTRACT";
	
	if (argument0 == vk_decimal)
	    return "DECIMAL";
	
	if (argument0 == -1)
	    return "PRESS KEY";
	
	return chr(argument0);
}
