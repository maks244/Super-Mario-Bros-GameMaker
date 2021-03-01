function player_death_sequence(){
	if (death_timer == 0) {
		global.mario_lives -= 1
		global.starpower_timer = 0
		global.starpower_timer_timer = 0
		global.grav = 0
		hsp = 0
		vsp = 0
		sprite_index = spr_mario_dead
		depth = -100
		audio_stop_all()
		audio_play_sound(Death, 1, false)
	}
	// Death animation
	if (death_timer == room_speed/3) {
		global.grav = 0.2
		vsp = -4.5
	} 
	// Shows screen after death
	if (death_timer == room_speed*3.5) {
		if (global.time_left < 1) room_goto(Time_Up)
		else {
		    if (global.mario_lives < 1) room_goto(Game_Over)
		    else room_goto(Level_Start)
		}
	}
	death_timer++
}