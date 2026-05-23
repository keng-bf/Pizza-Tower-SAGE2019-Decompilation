if (!instance_exists(obj_keyconfig))
{
    if (-obj_player.key_left2 && optionselected > 0)
    {
        optionselected -= 1;
        scr_soundeffect(sfx_step);
    }
    
    if (obj_player.key_right2 && optionselected < 1)
    {
        optionselected += 1;
        scr_soundeffect(sfx_step);
    }
}

if (optionselected == 1 && obj_player.key_jump)
{
    file_delete("saveData.ini");
    scr_initinput();
    scr_soundeffect(sfx_breakblock1);
	load_data()
    with (obj_SAGE2019achievementmarker)
    {
        snickshotgun = 0;
        dungeonbackup = 0;
        srank = 0;
        snicksrank = 0;
        combo10 = 0;
        secret = 0;
        knight = 0;
        toppin = 0;
        treasure = 0;
    }
    
    obj_mainmenuselect.selected = 0;
    instance_destroy();
}

if (obj_player.key_slap2 || (optionselected == 0 && obj_player.key_jump) || obj_player.key_start)
{
    scr_soundeffect(sfx_enemyprojectile);
    obj_mainmenuselect.selected = 0;
    instance_destroy();
}
