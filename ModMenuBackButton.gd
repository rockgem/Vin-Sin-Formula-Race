extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _physics_process(delta: float) -> void:
	if is_pressed():
		get_tree().change_scene_to_file("res://main_menu.tscn")

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ESCAPE:
			get_tree().change_scene_to_file("res://main_menu.tscn")
