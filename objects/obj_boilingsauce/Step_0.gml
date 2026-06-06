if (place_meeting(x, y - 1, obj_player) && obj_player.state != 54)
{
	with obj_player
	{
		state = 5;
		image_index = 0;
		vsp = -25;
		sprite_index = spr_fireass;
	}
    scr_soundeffect(sfx_scream5);
}
