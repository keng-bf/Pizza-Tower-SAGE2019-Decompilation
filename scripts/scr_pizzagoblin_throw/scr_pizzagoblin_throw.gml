function scr_pizzagoblin_throw()
{
	if (!variable_global_exists("throw_frame"))
	{
    	    global.throw_frame = 0;
    	    global.throw_frame[obj_pizzagoblin] = 2;
    	    global.throw_frame[obj_pizzard] = 6;
    	    global.throw_frame[obj_pepgoblin] = 1;
    	    global.throw_sprite = 0;
    	    global.throw_sprite[obj_pizzagoblin] = spr_pizzagoblin_throwbomb;
    	    global.throw_sprite[obj_pizzard] = spr_pizzard_shoot;
    	    global.throw_sprite[obj_pepgoblin] = spr_pepgoblin_kick;
    	    global.reset_timer = 0;
    	    global.reset_timer[obj_pizzagoblin] = 200;
    	    global.reset_timer[obj_pizzard] = 100;
    	    global.reset_timer[obj_pepgoblin] = 100;
	}
	
	hsp = 0;
	
	if (floor(image_index) == (image_number - 1))
	    state = 100;
	
	if (bombreset == 0 && floor(image_index) == global.throw_frame[object_index])
	{
	    bombreset = global.reset_timer[object_index];
	    sprite_index = global.throw_sprite[object_index];
	    scr_soundeffect(sfx_enemyprojectile);
	    
	    switch (object_index)
	    {
	        case obj_pizzagoblin:
	            with (instance_create(x, y, obj_pizzagoblinbomb))
	            {
	                hsp = other.image_xscale * 10;
	                vsp = -8;
	            }
	            
	            break;
	        
	        case obj_pizzard:
	            with (instance_create(x, y, obj_pizzard_bolt))
	                image_xscale = other.image_xscale;
	            
	            break;
	        
	        case obj_pepgoblin:
	            with (instance_create(x, y, obj_pepgoblin_kickhitbox))
	            {
	                baddieID = other.id;
	                image_xscale = other.image_xscale;
	            }
	            
	            break;
	    }
	}
	
	if (!grounded && hsp < 0)
	    hsp += 0.1;
	else if (!grounded && hsp > 0)
	    hsp -= 0.1;
}
