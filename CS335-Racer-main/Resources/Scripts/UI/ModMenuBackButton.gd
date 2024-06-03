extends Button


func _physics_process(delta: float) -> void:
	if is_pressed():
		get_tree().change_scene_to_file("res://Resources/Scenes/main_menu.tscn")

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ESCAPE:
			get_tree().change_scene_to_file("res://Resources/Scenes/main_menu.tscn")
