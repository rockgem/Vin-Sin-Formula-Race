extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5
const ROTATE_SPEED = 1.2

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

var mousePosition = Vector2(0,0)

func _ready():
	mousePosition = Vector2(get_window().size.x / 2, get_window().size.y / 2)

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ESCAPE:
			get_tree().quit()

func _input(event):
	if event is InputEventMouseMotion:
		mousePosition = event.position

func _physics_process(delta):
	if mousePosition.x < (get_window().size.x - 120) / 2:
		rotate(Vector3(0,1,0), ROTATE_SPEED * delta)
	elif mousePosition.x > (get_window().size.x + 120) / 2:
		rotate(Vector3(0,1,0), -ROTATE_SPEED * delta)
	
	if mousePosition.y < (get_window().size.y - 200) / 2:
		rotate_object_local(Vector3(1,0,0), ROTATE_SPEED * delta)
	elif mousePosition.y > (get_window().size.y + 200) / 2:
		rotate_object_local(Vector3(1,0,0), -ROTATE_SPEED * delta)
	
	if rotation.x > 0.5:
		rotation.x = 0.5
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("left", "right", "forward", "back")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
