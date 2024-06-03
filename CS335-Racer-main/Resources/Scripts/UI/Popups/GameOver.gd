extends Control


func _ready():
	get_tree().paused = true
	
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ESCAPE:
			get_tree().paused=false
			get_tree().change_scene_to_file("res://Resources/Scenes/main_menu.tscn")

func _on_retry_pressed():
	get_tree().paused=false
	get_tree().change_scene_to_file(ManagerGame.currMap)


func _on_main_menu_pressed():
	get_tree().paused=false
	get_tree().change_scene_to_file('res://Resources/Scenes/main_menu.tscn')
