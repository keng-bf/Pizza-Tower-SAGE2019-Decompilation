#macro auto_targetdoor if (place_meeting(x, y, obj_doorA))\
							targetDoor = "A"\
						if (place_meeting(x, y, obj_doorB))\
							targetDoor = "B"\
						if (place_meeting(x, y, obj_doorC))\
							targetDoor = "C"\
						if (place_meeting(x, y, obj_doorD))\
							targetDoor = "D"\
						if (place_meeting(x, y, obj_doorE))\
							targetDoor = "E"

layer_force_draw_depth(1, 0);
draw_set_colour(c_black);
__global_object_depths();
global.saveroom = ds_list_create();
global.cowboyhat = 0;
global.key_inv = 0;
global.shroomfollow = 0;
global.cheesefollow = 0;
global.tomatofollow = 0;
global.sausagefollow = 0;
global.pineapplefollow = 0;
global.keyget = 0;
global.collect = 0;
global.treasure = 0;
global.combo = 0;
global.combotime = 0;
global.pizzacoin = 0;
global.toppintotal = 1;
global.baddieroom = ds_list_create();
global.panic = 0;
global.snickchallenge = 0;
global.secretfound = 0;
global.shotgunammo = 0;
global.SAGEshotgunsnicknumber = 0;
global.SAGEknighttaken = 0;
ini_open("saveData.ini");

if !ini_section_exists("SAGE2019")
{
    ini_write_string("SAGE2019", "shotgunsnick", 0);
    ini_write_string("SAGE2019", "dungeonbackup", 0);
    ini_write_string("SAGE2019", "srank", 0);
    ini_write_string("SAGE2019", "snicksrank", 0);
    ini_write_string("SAGE2019", "combo10", 0);
    ini_write_string("SAGE2019", "secret", 0);
    ini_write_string("SAGE2019", "knight", 0);
    ini_write_string("SAGE2019", "toppin", 0);
    ini_write_string("SAGE2019", "treasure", 0);
}

global.SAGEshotgunsnick = ini_read_string("SAGE2019", "shotgunsnick", 0);
global.SAGEdungeonbackup = ini_read_string("SAGE2019", "dungeonbackup", 0);
global.SAGEsrank = ini_read_string("SAGE2019", "srank", 0);
global.SAGEsnicksrank = ini_read_string("SAGE2019", "snicksrank", 0);
global.SAGEcombo10 = ini_read_string("SAGE2019", "combo10", 0);
global.SAGEsecret = ini_read_string("SAGE2019", "secret", 0);
global.SAGEknight = ini_read_string("SAGE2019", "knight", 0);
global.SAGEtoppin = ini_read_string("SAGE2019", "toppin", 0);
global.SAGEtreasure = ini_read_string("SAGE2019", "treasure", 0);
global.option_fullscreen = ini_read_real("Option", "fullscreen", 1);
global.option_resolution = ini_read_real("Option", "resolution", 1);
ini_close();
window_set_fullscreen(!global.option_fullscreen);
var _window = [
	[480, 270],
	[960, 540],
	[1920, 1080],
]
window_set_size(_window[global.option_resolution][0], _window[global.option_resolution][1]);