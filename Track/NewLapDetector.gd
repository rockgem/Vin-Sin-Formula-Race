extends Area2D

signal lap_started


func _on_body_entered(body):
	print(body)
	emit_signal("lap_started")
	pass # Replace with function body.

func _on_input_event(viewport, event, shape_idx):
	print("Detected: Closed")
	emit_signal("lap_started")
	pass # Replace with function body.
