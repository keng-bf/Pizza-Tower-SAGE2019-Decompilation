draw_self();
draw_set_font(global.bigfont);
draw_set_halign(fa_center);
draw_set_color(c_white);

if (place_meeting(x, y, obj_player))
{
	draw_level()
    draw_level("ruin", global.ruinhighscore, global.ruinsecret, global.ruintoppin1, global.ruintoppin2, global.ruintoppin3, global.ruintoppin4, global.ruintoppin5)
    draw_level("dungeon", global.dungeonhighscore, global.dungeonsecret, global.dungeontoppin1, global.dungeontoppin2, global.dungeontoppin3, global.dungeontoppin4, global.dungeontoppin5)
    draw_level("snickchallenge", global.snickchallengehighscore,  global.ruinsecret, global.ruintoppin1, global.ruintoppin2, global.ruintoppin3, global.ruintoppin4, global.ruintoppin5, 0)
}
