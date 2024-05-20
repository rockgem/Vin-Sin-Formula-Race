extends Sprite2D

var turn = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	self.texture=load(CarArt.selected_car())

func _input(event):
	if event.is_action_pressed("left"):
		turn = -1
	elif event.is_action_pressed("right"):
		turn = 1
	elif event.is_action_released("left") or event.is_action_released("right"):
		turn = 0
	
	if event.is_action_pressed("brake"):
		rotate(turn * PI / 4)
	if event.is_action_released("brake"):
		rotation = PI / 2
