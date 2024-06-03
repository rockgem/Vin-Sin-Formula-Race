extends CharacterBody3D


const MAX_SPEED = 1000 # pix/sec
const ACCELERATION_COIFICIENT = 40 # pix/sec^2
const FRICTION_COIFICTIENT = 10
const TURN_SPEED = 1.5 # rad/sec
const MASS = 1

var energy = 0 # for accurate physics
var speed = 0

# polarity of velocity vector, what turns speed into velocity, stops instant stops on no input
var polarity = 0

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ESCAPE:
			get_tree().quit()

func _physics_process(delta):
	# -x is right, +x left, -y forward, +y backward
	var direction : Vector2 =  Input.get_vector("forward", "back", "right", "left")
		
	# do movement
	# speed will be 0.0 if direction is not pressed or forward and reverse are pressed at same time
	if direction.y:
		speed +=  ACCELERATION_COIFICIENT
		polarity = direction.y
	
	if speed > MAX_SPEED:
		speed = MAX_SPEED
	 
	velocity = self.global_transform.basis.z * speed * polarity

	# do rotation
	if direction.y > 0.0:  # if moving backwards
		rotate_y(TURN_SPEED * -direction.x)
	else:
		rotate_y(TURN_SPEED * direction.x)
		
	move_and_slide()
