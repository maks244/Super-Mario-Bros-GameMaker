//Movement
hsp = 0
vsp = 0
maxSpeed = 2
acceleration = 0.05

// Jump
global.grav = 0.3
jumpSpeed = 4.1
jumpTime = 0
jump_timer = 0
jump_sound_timer = 0

// Animation
if (place_meeting(x, y+1, parent_solid)) state = "IDLE"
else state = "JUMPING"
animationSpeed = 0.5
last_state = "IDLE"
last_direction = "RIGHT"
death_timer = 0
pipe_timer = 0

// Powerup
global.powerup_state = 0

// Enemy
global.enemy_combo = 0

// Other
game_paused = false

// Create follower
instance_create_depth(x, y, 1, obj_follower)
