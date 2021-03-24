function enemy_collision_check(xx, yy){
	if (place_meeting(xx, yy, parent_enemy)) {
	    enemy = instance_place(xx, yy, parent_enemy)
	    // Collision from the top
	    if (vsp > global.grav && enemy.state != "DEAD") {
			// Kill from starpower
			if (global.starpower_timer > 0) enemy_death_animation(false)
			// Normal kill or koopa stomp
			else {
				// If the enemy is a koopa
				if (enemy.object_index == obj_koopa) {
					if (enemy.state != "STOMPED" && global.koopa_timer == 0) with(enemy) {
						popup_score_draw_enemy(x, y)
						state = "STOMPED"
						global.koopa_combo = 0
					}
				}
				// If the enemy is anything other than a koopa
				else with(enemy) {
					popup_score_draw_enemy(x, y)
					state = "DEAD"
					delayed_remove = true
				}
				if (enemy.state != "KICKED") {
				    audio_play_sound(EnemyStomp, 1, false)
					global.enemy_combo++
					vsp = -3
				}
			}
		}
	    // Collision from the sides
	    else {
			// Kill enemy from starpower
			if (global.starpower_timer > 0) enemy_death_animation(false)
			// Take powerup away or kill Mario
			else player_damage()
		}
	}
	// Reset the enemy combo when touching the ground
	if (place_meeting(xx, yy+vsp, parent_solid)) global.enemy_combo = 0
}