function player_animation_damage(){
	switch (global.pause_game_timer) {
		case 55: sprite_index = spr_b_mario_jump; break;
		case 39: sprite_index = spr_b_mario_damage; break;
		case 35: sprite_index = spr_s_mario_damage; y += 8; break;
		case 31: sprite_index = spr_b_mario_damage; y -= 8; break;
		case 27: sprite_index = spr_s_mario_damage; y += 8; break;
		case 23: sprite_index = spr_b_mario_damage; y -= 8; break;
		case 19: sprite_index = spr_s_mario_damage; y += 8; break;
		case 15: sprite_index = spr_b_mario_damage; y -= 8; break;
		case 11: sprite_index = spr_s_mario_damage; y += 8; break;
		case 7: sprite_index = spr_b_mario_damage; y -= 8; break;
		case 3: sprite_index = spr_s_mario_damage; y += 8; break;
	}
}