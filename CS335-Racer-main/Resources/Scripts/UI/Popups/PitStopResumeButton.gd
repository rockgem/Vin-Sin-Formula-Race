extends Button


# Called when the node enters the scene tree for the first time.
func _physics_process(delta: float) -> void:
	if is_pressed():
		%Vehicle.canMove=true
		%PitStopMenu.visible=false
		%Vehicle.gen_car()
		%Music.setPlaying()
		#%PlayerSprite.reloadTexture()
