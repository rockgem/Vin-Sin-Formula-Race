extends Control


func _ready():
	get_tree().paused = true


func _on_retry_pressed():
	get_tree().change_scene_to_file('res://overhead.tscn')


func _on_main_menu_pressed():
	get_tree().change_scene_to_file('res://main_menu.tscn')
