function player_powerup_check(powerup){
	if (global.powerup == 0) {
		if (powerup == "MUSHROOM") {
			with (obj_player) {
				transform = "MUSHROOM"
				image_speed = 0
			}
			global.pause_game_timer = 60
		}
		if (powerup == "FIREFLOWER") {
			with (obj_player) {
				transform = "MUSHROOM"
				image_speed = 0
			}
			global.pause_game_timer = 60
		}
		
	}
	if (global.powerup == 1) {
		if (powerup == "FIREFLOWER") {
			with (obj_player) {
				transform = "FIREFLOWER"
			}
			global.pause_game_timer = 64
		}
	}
}