draw_self();


if(cost > 0){
	draw_set_halign(fa_center);
	draw_text_transformed(x, y, "$ " + string(cost), 3, 3, 0);
	draw_set_halign(fa_left);
}

if(selected){
	draw_set_halign(fa_center);
	draw_text_transformed(x, y - (sprite_height * 1.2), desc, 1.5, 1.5, 0);
	draw_set_halign(fa_left);
}