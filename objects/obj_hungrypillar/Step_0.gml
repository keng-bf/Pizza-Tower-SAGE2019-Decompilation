with (obj_player)
{
    if (place_meeting(x + hsp, y, other.id) && state == 21)
    {
        state = 2;
        sprite_index = choose(spr_player_finishingblow1, spr_player_finishingblow2, spr_player_finishingblow3, spr_player_finishingblow4, spr_player_finishingblow5);
        image_index = 0;
        hsp = 0;
        movespeed = 0;
    }
    
    if (place_meeting(x + hsp, y, other.id) && instakillmove == 1)
        instance_destroy(other.id);
}

if (place_meeting(x, y, obj_swordhitbox))
    instance_destroy();
