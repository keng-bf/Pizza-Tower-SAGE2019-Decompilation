global.bigfont = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0);
global.smallnumber = font_add_sprite_ext(spr_smallnumber, "1234567890", 1, 0);
layer_force_draw_depth(1, 0);
draw_set_colour(c_black);
__global_object_depths();

function load_data()
{
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
global.medievalhighscore = ini_read_string("Highscore", "medieval", 0);
global.ruinhighscore = ini_read_string("Highscore", "ruin", 0);
global.dungeonhighscore = ini_read_string("Highscore", "dungeon", 0);
global.snickchallengehighscore = ini_read_string("Highscore", "snickchallenge", 0);
global.medievaltoppin1 = ini_read_string("Toppin", "medieval1", 0);
global.medievaltoppin2 = ini_read_string("Toppin", "medieval2", 0);
global.medievaltoppin3 = ini_read_string("Toppin", "medieval3", 0);
global.medievaltoppin4 = ini_read_string("Toppin", "medieval4", 0);
global.medievaltoppin5 = ini_read_string("Toppin", "medieval5", 0);
global.ruintoppin1 = ini_read_string("Toppin", "ruin1", 0);
global.ruintoppin2 = ini_read_string("Toppin", "ruin2", 0);
global.ruintoppin3 = ini_read_string("Toppin", "ruin3", 0);
global.ruintoppin4 = ini_read_string("Toppin", "ruin4", 0);
global.ruintoppin5 = ini_read_string("Toppin", "ruin5", 0);
global.dungeontoppin1 = ini_read_string("Toppin", "dungeon1", 0);
global.dungeontoppin2 = ini_read_string("Toppin", "dungeon2", 0);
global.dungeontoppin3 = ini_read_string("Toppin", "dungeon3", 0);
global.dungeontoppin4 = ini_read_string("Toppin", "dungeon4", 0);
global.dungeontoppin5 = ini_read_string("Toppin", "dungeon5", 0);
global.medievalsecret = ini_read_string("Secret", "medieval", 0);
global.ruinsecret = ini_read_string("Secret", "ruin", 0);
global.dungeonsecret = ini_read_string("Secret", "dungeon", 0);
global.medievaltreasure = ini_read_string("Treasure", "medieval", 0);
global.ruintreasure = ini_read_string("Treasure", "ruin", 0);
global.dungeontreasure = ini_read_string("Treasure", "dungeon", 0);
global.medievalrank = ini_read_string("Ranks", "medieval", "none");
global.ruinrank = ini_read_string("Ranks", "ruin", "none");
global.dungeonrank = ini_read_string("Ranks", "dungeon", "none");
global.snickchallengerank = ini_read_string("Ranks", "snickchallenge", "none");
global.option_fullscreen = ini_read_real("Option", "fullscreen", 1);
global.option_resolution = ini_read_real("Option", "resolution", 1);
ini_close();
}
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
load_data()
window_set_fullscreen(!global.option_fullscreen);
window_easy_size()

function window_easy_size(_key = global.option_resolution)
{
	var _window = [
		[480, 270],
		[960, 540],
		[1920, 1080],
	]
	window_set_size(_window[_key][0], _window[_key][1]);
}