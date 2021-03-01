function enemy_collision_check(xx, yy){
	if (place_meeting(xx, yy, parent_enemy)) {
	    enemy = instance_place(xx, yy, parent_enemy)
	    // Collision from the top
	    if (vsp > global.grav && enemy.state != "DEAD") {
			// Kill from starpower
			if (global.starpower_timer > 0) {
				enemy_death_animation()
			}
			// Normal kill
			else {
				with(enemy) {
					popup_score_draw_enemy(x, y)
		            state = "DEAD"
		            delayed_remove = true
		        }
		        audio_play_sound(EnemyStomp, 1, false)
				global.enemy_combo++
				vsp = -3
			}
		}
	    // Collision from the sides
	    else {
			// Kill from starpower
			if (global.starpower_timer > 0) {
				enemy_death_animation()
			}
			// Take powerup away or kill Mario
			else {
				if (global.invincibility_timer = 0) {
					if (global.powerup >= 1) {
						global.pause_game_timer = 55
						global.invincibility_timer = 210
						global.powerup = 0
						audio_play_sound(Pipe, 1, false)
					}
					else state = "DEAD"
				}
			}
		}
	}
	// Reset the enemy combo when touching the ground
	if (place_meeting(xx, yy+vsp, parent_solid)) global.enemy_combo = 0
}