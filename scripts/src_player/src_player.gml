function src_player_collision() {
	var _layer_allowed = ["wall_layer", "nature_layer"]
	// Collision checks
	if (tile_meeting(x + sign(hor_speed ), y, _layer_allowed)) {
	    hor_speed = 0;
	}
	if (tile_meeting(x, y + (ver_speed * 2), _layer_allowed)) {
	    ver_speed = 0;
	}

	/*
	// colision by object will be used dont remove 
		if place_meeting(x + (hor_speed * 2), y, obj_wall_parent) {
		    hor_speed = 0;
		}
		if place_meeting(x, y + (ver_speed * 2), obj_wall_parent) {
		    ver_speed = 0;
		}

	*/

	// Apply movement
	x +=sign( hor_speed);
	y +=sign( ver_speed);
}


function src_player_moviment () {
	// Input checks
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);
var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);

// Movement calculations
if (_up || _down) {
    ver_speed = (_down - _up) * walk_speed;
    hor_speed = 0; // Impede o movimento horizontal quando se move verticalmente
} else if (_left || _right) {
    hor_speed = (_right - _left) * walk_speed;
    ver_speed = 0; // Impede o movimento vertical quando se move horizontalmente
} else {
    hor_speed = 0;
    ver_speed = 0;
}

src_player_collision()
// Verifica se o jogador está se movendo horizontalmente ou verticalmente
if (hor_speed != 0 || ver_speed != 0) {
    // Se estiver se movendo horizontalmente
    if (abs(hor_speed) > abs(ver_speed)) {
        face = (hor_speed > 0) ? RIGHT : LEFT;
		last_dir = face;
    }
    // Se estiver se movendo verticalmente
    else {
        face = (ver_speed > 0) ? DOWN : UP;
		last_dir = face;
    }
    // Define a sprite de caminhada com base na direção
    sprite_index = player_sprites.walking[face];
} else {
    // Se não estiver se movendo, define a sprite de parado (idle)
    sprite_index = player_sprites.ide[last_dir]; // Usa DOWN como direção padrão quando parado
}
	
}