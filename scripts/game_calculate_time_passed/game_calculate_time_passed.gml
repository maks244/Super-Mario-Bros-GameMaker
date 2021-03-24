function game_calculate_time_passed(type){
	if (type = "AFTER_DEATH") global.current_time_string = "TIME:      " + global.current_level_time
	else {
		if (global.level_timer > 3600) {
			_level_time_minutes = floor((global.level_timer/3600))
			_level_time_seconds = (global.level_timer/60)-(_level_time_minutes*60)
			if (type = "NEW") global.new_level_time = string(_level_time_minutes) + ":" + string_format(_level_time_seconds, 0, 3) + "s"
			else if (type = "CURRENT") global.current_level_time = string(_level_time_minutes) + ":" + string_format(_level_time_seconds, 0, 3) + "s"
		}
		else {
			_level_time_seconds = global.level_timer/60
			if (type = "NEW") global.new_level_time = string_format(_level_time_seconds, 0, 3) + "s"
			else if (type = "CURRENT") global.current_level_time = string_format(_level_time_seconds, 0, 3) + "s"
		}
		global.new_time_string = global.new_time_string + global.new_level_time
		if (type = "CURRENT") global.current_time_string = global.current_time_string + global.current_level_time
	}
}