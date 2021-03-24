// Create follower
instance_create_depth(x, y, 1, obj_follower)

//Movement
hsp = 0
vsp = 0
maxSpeed = 2
acceleration = 0.05

// Jump
jumpSpeed = 4.1
jumpTime = 0
jump_timer = 0
jump_sound_timer = 0
duck_jump = false
global.grav = 0.3

// Animation
global.state = "IDLE"
if (!place_meeting(x, y+1, parent_solid)) falling_sprite = true
else falling_sprite = false
firing_sprite = false
animationSpeed = 0.5
last_state = "IDLE"
death_timer = 0
pipe_timer = 0

// Powerup
transform = undefined

// Enemy
global.enemy_combo = 0
global.koopa_combo = 0