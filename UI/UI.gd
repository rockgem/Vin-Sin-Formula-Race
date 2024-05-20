extends CanvasLayer

#var cars = get_tree().get_nodes_in_group('Vehicle')


func _ready():
	ManagerGame.race_finished.connect(on_race_finished)
	ManagerGame.pop_to_ui.connect(pop_to_ui)


func _physics_process(delta):
	update_display()


func pop_to_ui(instance, stack = false):
	#if stack == false:
		#for child in get_children():
			#child.queue_free()
	
	add_child(instance)


func update_display():
	get_node('%Laps').text = 'Laps: %s/%s' % [ManagerGame.global_level_ref.laps_completed, ManagerGame.laps_max]
	
	#for car in cars:
		#pass


func on_race_finished():
	var i = load("res://actors/ui/popups/GameOver.tscn").instantiate()
	ManagerGame.pop_to_ui.emit(i)
