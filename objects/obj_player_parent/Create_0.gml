// Walking Default Values
hor_speed = 0;
ver_speed = 0;
walk_speed = 1;


player_sprites = {
	ide: [spr_samurai_down_ide, spr_samurai_up_ide, spr_samurai_right_ide, spr_samurai_left_ide],
	walking: [spr_samurai_down_walk, spr_samurai_up_walk, spr_samurai_right_walk, spr_samurai_left_walk],
}

face = DOWN;
last_dir = DOWN;

mask_index = spr_collision_mask;


enum PLAYER_STATE {
	WALKING,
	ATTAKING,
	HIT,
	DEAD
}

current_state = src_player_moviment;