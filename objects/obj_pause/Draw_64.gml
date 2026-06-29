if pause
{
	draw_set_color(c_black)
	draw_set_alpha(1)
	draw_rectangle(0, 0, 960, 540, false)
    draw_sprite(spr_pausescreen, selected, 0, 0);
}