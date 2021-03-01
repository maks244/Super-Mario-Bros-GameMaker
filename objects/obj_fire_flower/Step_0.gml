switch (state) {
	case("WAIT"): {
		timer++
		if (timer = 16) {
			state = "APPEAR"
			timer = 0
		}
		exit
	}
	case("APPEAR"): {
		visible = true
		if (timer = 48) state = "RUN"
		else y -= 0.25
		timer++
		exit
	}
}