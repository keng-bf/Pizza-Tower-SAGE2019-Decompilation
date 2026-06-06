sprite_index = asset_get_index("spr_pizzacollect" + string(irandom_range(1, 3)))
image_speed = 0.35;

if (obj_player.character == "S")
    sprite_index = spr_snickcollectible2;
