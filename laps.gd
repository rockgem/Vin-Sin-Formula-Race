extends Control


@onready var laps_amount = get_node('%LapsAmount')


func _on_start_pressed():
	ManagerGame.laps_max = laps_amount.value
	
	get_tree().change_scene_to_file("res://overhead.tscn")
