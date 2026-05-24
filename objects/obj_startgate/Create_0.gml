draw_level = function(_string = "medieval",_highscore = global.medievalhighscore,_secret = global.medievalsecret,_top1 = global.medievaltoppin1,_top2 = global.medievaltoppin2,_top3 = global.medievaltoppin3,_top4 = global.medievaltoppin4,_top5 = global.medievaltoppin5,_yeah = 1)
{
    if (level == _string)
    {
        draw_text(x, y - 150 - 46, _highscore);
		if _yeah
		{
			draw_text(x, y - 200 - 46, string(_secret) + " OF 6 SECRET");
			draw_sprite(_top1 ? spr_pizzakinshroom : spr_pizzakinshroom_pause, -1, x - 75, y - 100 - 46);
			draw_sprite(_top2 ? spr_pizzakincheese : spr_pizzakincheese_pause, -1, x - 35, y - 100 - 46);
			draw_sprite(_top3 ? spr_pizzakintomato : spr_pizzakintomato_pause, -1, x, y - 100 - 46);
			draw_sprite(_top4 ? spr_pizzakinsausage : spr_pizzakinsausage_pause, -1, x + 35, y - 100 - 46);
			draw_sprite(_top5 ? spr_pizzakinpineapple : spr_pizzakinpineapple_pause, -1, x + 75, y - 100 - 46);
		}
    }
}