var _player = obj_player_parent;
var _cam = obj_manager_camera;


if (place_meeting(x,y, _player)) {
	if (global.debug_mode) {
		show_debug_message("colid");
	}
	var _i;
	for (_i = 0; _i < instance_number(obj_camera_actors); _i++) {
	    var _actor = instance_find(obj_camera_actors, _i);
	    if (_actor.camera_id == id_teleporter) {
	        global.cam_follow = _actor;
			_player.x = x_pos;
			_player.y = y_pos;
	        break;
	    }
	}
}

