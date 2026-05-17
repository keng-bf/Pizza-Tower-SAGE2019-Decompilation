draw_set_font(global.bigfont);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_sprite_ext(tvsprite, -1, 832, 74, 1, 1, 1, c_white, alpha);
draw_text(xi, yi, string_hash_to_newline(message));

if global.combo != 0 && global.combotime != 0 && (tvsprite == spr_tvdefault || tvsprite == spr_tvcombo)
    draw_text(852, 75, string_hash_to_newline(global.combo));

if tvsprite == spr_tvdefault
{
    chose = 0;
    draw_text(832, 60, string_hash_to_newline(global.collect));
}