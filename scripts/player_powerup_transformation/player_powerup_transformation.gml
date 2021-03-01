function player_powerup_transformation(powerup, state){
	if (powerup = "MUSHROOM") {
		switch (global.pause_game_timer) {
			case 51: player_sprite_growing(); y -= 8; break;
			case 47: player_sprite_small_mario(); y += 8; break;
			case 43: player_sprite_growing(); y -= 8; break;
			case 39: player_sprite_small_mario(); y += 8; break;
			case 35: player_sprite_growing(); y -= 8; break;
			case 31: player_sprite_big_mario(); break;
			case 27: player_sprite_small_mario(); y += 8; break;
			case 23: player_sprite_growing(); y -= 8; break;
			case 19: player_sprite_big_mario(); break;
			case 15: player_sprite_small_mario(); y += 8; break;
			case 14: player_sprite_big_mario(); y -= 8; break;
			case 0: global.powerup = 1; break;
		}
	}
	else if (powerup = "FIREFLOWER") {
		player_animation_transformation_fireflower(state)
		if (global.pause_game_timer == 0) {
			global.powerup = 2
			global.starpower_timer_timer = 0
		}
	}
	if (global.pause_game_timer == 0) transform = undefined
}