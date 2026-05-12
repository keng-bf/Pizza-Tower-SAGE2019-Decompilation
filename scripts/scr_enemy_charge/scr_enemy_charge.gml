function scr_enemy_charge()
{
	if (object_index == obj_fencer)
	{
	    if (grounded || (grounded && !place_meeting(x, y, obj_platform)))
	        hsp = image_xscale * movespeed;
	    else
	        hsp = 0;
	    
	    if (((scr_solid(x + 1, y) && image_xscale == 1) || (scr_solid(x - 1, y) && image_xscale == -1)) && !place_meeting(x + sign(hsp), y, obj_slope))
	        image_xscale *= -1;
	}
	
	if (object_index == obj_ancho)
	{
	    hsp = image_xscale * movespeed;
	    
	    if (place_meeting(x + hsp, y, obj_solid))
	    {
	        state = 104;
	        stunned = 100;
	    }
	}
}
