extends Node2D


# this script can also be used for future new levels :D

@onready var finish_line_pos = $FinishLine.global_position

var first_lap_finished = false
var laps_completed = 0
var race_finished = false


func _ready():
	ManagerGame.global_level_ref = self
	
	get_tree().paused = false


func _on_new_lap_detector_body_entered(body):
	if first_lap_finished:
		laps_completed += 1
	else:
		first_lap_finished = true
	
	# check laps if max
	if laps_completed >= ManagerGame.laps_max and race_finished == false:
		ManagerGame.race_finished.emit()
		
		race_finished = true
