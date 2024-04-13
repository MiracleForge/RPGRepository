var _player = obj_player_parent;
var _cam = obj_manager_camera;
var _id_actor; 

if (place_meeting(x,y, _player)) {
	if (global.debug_mode) {
		show_debug_message("colid");
	}
	
	_id_actor = (obj_player_parent.ver_speed > 0) ? id_next_actor : id_prev_actor;

	var _i;
	
	for (_i = 0; _i < instance_number(obj_camera_actors); _i++) {
	    var _actor = instance_find(obj_camera_actors, _i);
	    if (_actor.camera_id == _id_actor) {
	        global.cam_follow = _actor;
	        _player.y += (obj_player_parent.ver_speed > 0) ? TITLE_SIZE : -TITLE_SIZE;
	        break;
	    }
	}
}


