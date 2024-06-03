extends TextEdit

var number
var player
# Called when the node enters the scene tree for the first time.
func _ready():
	number=0.0
	self.text="0.0"
	pass # Replace with function body.

func _process(delta):
	self.text=str(number)

func _on_character_body_2d_speed_change(speed):
	number=int(speed)/15
	pass # Replace with function body.

# Replace with function body.


func _on_vehicle_speed_change(speed):
	number=int(speed)/15
