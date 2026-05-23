function pal_swap_set()
{
	shader_set(shd_pal_swapper);
	var _pal_sprite = argument[0],_pal_index = argument[1],tex = sprite_get_texture(_pal_sprite, 0),UVs = sprite_get_uvs(_pal_sprite, 0);
	texture_set_stage(global.Pal_Texture, tex);
	gpu_set_texfilter_ext(global.Pal_Texture, 1);
	var texel_x = texture_get_texel_width(tex),texel_y = texture_get_texel_height(tex),texel_hx = texel_x * 0.5,texel_hy = texel_y * 0.5;
	shader_set_uniform_f(global.Pal_Texel_Size, texel_x, texel_y);
	shader_set_uniform_f(global.Pal_UVs, UVs[0] + texel_hx, UVs[1] + texel_hy, UVs[2] + texel_hx, UVs[3] + texel_hy);
	shader_set_uniform_f(global.Pal_Index, _pal_index);
}
