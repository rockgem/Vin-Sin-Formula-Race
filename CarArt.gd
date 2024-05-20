extends Node

var carPath
var carCode
# Called when the node enters the scene tree for the first time.
func _ready():
	carPath="res://Art/Red/Red -.png"
	carCode="RDDDD"
	pass # Replace with function body.

func _unhandled_input(event):
	if event is InputEventKey:
		if event.is_action_pressed("fullscreen"):
			var currMode=DisplayServer.window_get_mode()
			if currMode==0:
				DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
			elif currMode==3:
				DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED) 
	
func selected_car():
	return(carPath)

func car_code():
	return(carCode)
