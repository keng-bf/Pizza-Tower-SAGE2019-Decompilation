if (hurted == 0 && cutscene == 0 && (state != 26 && sprite_index != spr_bombpep_end) && state != 62 && state != 64)
{
    if (state == 23 || state == 24)
    {
        scr_soundeffect(sfx_loseknight);
        for (var i = 0; i < 5; i++)
		{
			with (instance_create(x, y, obj_knightdebris))
				image_index = i;
		}
		
        if (x != other.x)
            obj_player.hsp = sign(x - other.x) * 5;
    }
    
    image_index = 0;
    hurted = 1;
    vsp = -4;
    sprite_index = spr_bombpepend;
    state = 26;
    bombpeptimer = 0;
}
