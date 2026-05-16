function scr_player_facestomp()
{
	move = key_left + key_right;
	jumpAnim = 0;
	hsp = move * movespeed;
	
	if ((scr_solid(x + 1, y) && xscale == 1) || (scr_solid(x - 1, y) && xscale == -1))
	    movespeed = 0;
	
	if (move == 0)
	    movespeed = 0;
	
	if (move != 0 && movespeed < 6)
	    movespeed += 0.5;
	
	if (xscale == 1 && move == -1)
	    movespeed = 0;
	
	if (xscale == -1 && move == 1)
	    movespeed = 0;
	
	if (!key_down)
	    state = 57;
	
	landAnim = 1;
	
	if (vsp > 0)
	    superslam++;
	else
	    superslam = 0;
	
	if (vsp > 15)
	{
	    state = 73;
	    superslam = 0;
	}
	
	if (facestompAnim == 0)
	    sprite_index = spr_player_facestomp;
	
	if (move != 0)
	    xscale = move;
	
	image_speed = 0.35;
	
	if (key_jump)
	    input_buffer_jump = 0;
}
