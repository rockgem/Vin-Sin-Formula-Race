extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _physics_process(delta: float) -> void:
	if is_pressed():
		get_tree().change_scene_to_file("res://Resources/Scenes/modify.tscn")
