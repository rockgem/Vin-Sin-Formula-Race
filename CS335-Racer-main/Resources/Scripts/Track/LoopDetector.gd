extends Area2D

signal player_detected
# Called when the node enters the scene tree for the first time.

func _on_input_event(viewport, event, shape_idx):
	emit_signal("player_detected")
	pass # Replace with function body.
