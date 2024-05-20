extends StaticBody2D

func _on_loop_detector_player_detected():
	self.set_collision_layer_value(1, false)
	$TrafficCones.visible=false
	pass # Replace with function body.


func _on_new_lap_detector_lap_started():
	self.set_collision_layer_value(1, true)
	$TrafficCones.visible=true
	pass # Replace with function body.
