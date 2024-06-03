extends Button


# Called when the node enters the scene tree for the first time.
func _physics_process(delta: float) -> void:
	if is_pressed():
		ManagerGame.currMap="res://Resources/Scenes/altTrack.tscn"
		get_tree().change_scene_to_file("res://Resources/Scenes/altTrack.tscn")
