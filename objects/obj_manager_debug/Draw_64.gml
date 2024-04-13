if (global.debug_mode) {
    // Get the camera position
    var _cam_x = camera_get_view_x(view_camera[0]);
    var _cam_y = camera_get_view_y(view_camera[0]);

    // Set horizontal alignment to left and vertical alignment to top
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    // Draw the text for memory debug instructions at the top left of the camera view
    draw_text_color(_cam_x, _cam_y, "Press 1 to memory (on console), Press 2 to", c_red, c_red, c_red, c_red, 1);
	
    // Check if the '1' key is pressed to trigger memory dump
    if (keyboard_check(ord("1"))) {
        var _mem = debug_event("DumpMemory");		
    }
	
    // Set horizontal alignment to right and vertical alignment to top to avoid magic numbers
    draw_set_halign(fa_right);
    draw_set_valign(fa_top);

// First text: FPS
var _fps_text = "FPS:" + string(fps);
var _text_height = string_height(_fps_text);
var _real_fps = "Real FPS:" + string(fps_real);
var _text_height2 = string_height(_real_fps);
// Draw the FPS text at the top right of the camera view
draw_text_color(_cam_x + camera_get_view_width(view_camera[0]), _cam_y + _text_height*3 + _text_height2, _fps_text, c_green, c_green, c_green, c_green, 1);

// Second text: Real FPS

// Calculate the y position of the second text based on the height of the first text

// Draw the Real FPS text below the FPS text
draw_text_color(_cam_x + camera_get_view_width(view_camera[0]), _cam_y + _text_height *2 + _text_height2, _real_fps, c_green, c_green, c_green, c_green, 1);

// Who camera is following
var _camera_target = "Camera is following:" + string(global.cam_follow);
// Calculate the y position of the third text based on the height of the second text

// Draw the Camera is following text below the Real FPS text
draw_text_color(_cam_x + camera_get_view_width(view_camera[0]), _cam_y + _text_height + _text_height2, _camera_target, c_green, c_green, c_green, c_green, 1);

    // Restore default alignment
    draw_set_halign(fa_left);
    draw_set_valign(fa_bottom);
}
