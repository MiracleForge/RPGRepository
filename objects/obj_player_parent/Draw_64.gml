if (global.debug_mode) {
	draw_self();
	draw_text_color(x + 30, y - 10, "Hor_speed:" + string(hor_speed), c_green, c_green, c_green, c_green, 1);
	draw_text_color(x + 30, y - 30, "Ver_speed:" + string(ver_speed), c_blue, c_blue, c_blue, c_blue, 1);
	draw_text_color(x + 30, y - 50, "Last_dir" + string(last_dir), c_blue, c_blue, c_blue, c_blue, 1);

}
