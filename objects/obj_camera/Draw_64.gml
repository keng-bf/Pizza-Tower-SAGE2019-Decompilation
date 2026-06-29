pal_swap_set(spr_peppalette, obj_player.paletteselect);

if obj_player.backupweapon == 1
    draw_sprite_ext(spr_shotgunbackup, -1, 50, 100, 1, 1, 1, c_white, alpha);

if obj_player.state != 54
{
	var _hud;
    if obj_player.character == "P"
    {
        if (obj_player.sprite_index == spr_knightpep_thunder)
            _hud = spr_pepinoHUDthunder
        else if (obj_player.sprite_index != spr_knightpep_start && (obj_player.state == 23 || obj_player.state == 17))
            _hud = spr_pepinoHUDknight
        else if (obj_player.sprite_index == spr_bombpep_end)
            _hud = spr_pepinoHUDbombend
        else if (instance_exists(obj_itspizzatime) || obj_player.sprite_index == spr_bombpep_intro || obj_player.sprite_index == spr_bombpep_runabouttoexplode || obj_player.sprite_index == spr_bombpep_run || obj_player.sprite_index == spr_player_fireass)
            _hud = spr_pepinoHUDscream
        else if (obj_player.state == 91 || (obj_player.state == 76 && shake_mag > 0))
            _hud = spr_pepinoHUDstun
        else if (obj_player.sprite_index == spr_player_victory || obj_player.state == 55 || obj_player.state == 61 || obj_player.state == 22 || (obj_player.state == 53 && obj_player.sprite_index == spr_player_levelcomplete))
            _hud = spr_pepinoHUDhappy
        else if (obj_player.sprite_index == spr_player_machroll || obj_player.sprite_index == spr_player_tumble)
            _hud = spr_pepinoHUDrolling
        else if (global.combo >= 3)
            _hud = spr_pepinoHUDmenacing
        else if (obj_player.state == 68 || obj_player.state == 32 || obj_player.state == 90 || obj_player.state == 73 || obj_player.state == 56 || obj_player.state == 62 || obj_player.state == 41 || obj_player.state == 64 || obj_player.state == 45 || obj_player.state == 46 || obj_player.state == 50 || obj_player.state == 47 || obj_player.state == 48 || obj_player.state == 49)
            _hud = spr_pepinoHUDmach1
        else if (obj_player.state == 69 || obj_player.sprite_index == spr_player_dive || obj_player.sprite_index == spr_player_machslideboost || obj_player.state == 16 || obj_player.state == 21 || obj_player.state == 42)
            _hud = spr_pepinoHUDmach2
        else if (obj_player.state == 89 && obj_player.sprite_index == spr_player_crazyrun)
            _hud = spr_pepinoHUDmach4
        else if (obj_player.state == 89 || obj_player.sprite_index == spr_player_machslideboost3)
            _hud = spr_pepinoHUDmach3
        else if (obj_player.state == 72 || obj_player.sprite_index == spr_bombpep_end || obj_player.sprite_index == spr_player_fireassend || obj_player.state == 35 || obj_player.state == 26 || (obj_player.state == 53 && obj_player.sprite_index == spr_player_bossintro) || (obj_player.state == 53 && obj_player.sprite_index == spr_player_idle))
            _hud = spr_pepinoHUDhurt
        else if (obj_player.angry == 1)
            _hud = spr_pepinoHUD3hp
        else if (obj_player.sprite_index == spr_player_hurtidle || obj_player.sprite_index == spr_player_hurtwalk)
            _hud = spr_pepinoHUD1hp
        else if (global.panic || global.snickchallenge)
            _hud = spr_pepinoHUDpanic
        else if (obj_player.sprite_index == spr_shotgun_pullout)
            _hud = spr_pepinoHUDmenacing
        else
            _hud = spr_pepinoHUD
    }
    
    if obj_player.character == "S"
        _hud = spr_snickHUD
    draw_sprite_ext(_hud, -1, 125, 100, 1, 1, 1, c_white, alpha);
    shader_reset();
    
    if (obj_player.movespeed < 2.4 || !(obj_player.state == 68 || obj_player.state == 69 || obj_player.state == 89 || obj_player.state == 16 || obj_player.state == 70 || obj_player.state == 36 || obj_player.state == 21))
        draw_sprite_ext(spr_speedbar, 0, 125, 140, 1, 1, 1, c_white, alpha);
    else if (obj_player.movespeed >= 2.4 && obj_player.movespeed < 4.8 && (obj_player.state == 68 || obj_player.state == 69 || obj_player.state == 89 || obj_player.state == 16 || obj_player.state == 70 || obj_player.state == 36 || obj_player.state == 21))
        draw_sprite_ext(spr_speedbar, 1, 125, 140, 1, 1, 1, c_white, alpha);
    else if (obj_player.movespeed >= 4.8 && obj_player.movespeed < 7.2 && (obj_player.state == 68 || obj_player.state == 69 || obj_player.state == 89 || obj_player.state == 16 || obj_player.state == 70 || obj_player.state == 36 || obj_player.state == 21))
        draw_sprite_ext(spr_speedbar, 2, 125, 140, 1, 1, 1, c_white, alpha);
    else if (obj_player.movespeed >= 7.2 && obj_player.movespeed < 9.6 && (obj_player.state == 68 || obj_player.state == 69 || obj_player.state == 89 || obj_player.state == 16 || obj_player.state == 70 || obj_player.state == 36 || obj_player.state == 21))
        draw_sprite_ext(spr_speedbar, 3, 125, 140, 1, 1, 1, c_white, alpha);
    else if (obj_player.movespeed >= 9.6 && obj_player.movespeed < 12 && (obj_player.state == 68 || obj_player.state == 69 || obj_player.state == 89 || obj_player.state == 16 || obj_player.state == 70 || obj_player.state == 36 || obj_player.state == 21))
        draw_sprite_ext(spr_speedbar, 4, 125, 140, 1, 1, 1, c_white, alpha);
    else if (obj_player.movespeed >= 12 && (obj_player.state == 68 || obj_player.state == 69 || obj_player.state == 89 || obj_player.state == 16 || obj_player.state == 70 || obj_player.state == 36 || obj_player.state == 21))
        draw_sprite_ext(spr_speedbarmax, -1, 125, 140, 1, 1, 1, c_white, alpha);
    
	alpha = (obj_player.y < 200 && obj_player.x < 200) ? 0.5 : 1
	draw_set_font(global.bigfont);
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    
    if global.panic || global.snickchallenge
    {
		draw_set_color((global.minutes < 1) ? c_red : c_white);
        draw_text(random_range(1, -1) + 480, random_range(1, -1) + 65, string_hash_to_newline(string(global.minutes) + ((global.seconds < 10) ? ":0" : ":") + string(global.seconds)));
    }
    
    if global.key_inv
        draw_sprite_ext(spr_key, -1, 50, 30, 1, 1, 1, c_white, alpha);
    
    draw_sprite_ext(spr_inv, -1, 50, 30, 1, 1, 1, c_white, alpha);
}

gpu_set_blendmode(bm_normal);
