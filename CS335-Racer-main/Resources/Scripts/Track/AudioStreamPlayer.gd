extends AudioStreamPlayer

var car
var musicPath
var music

var currTime=0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	currTime+=delta
	if not is_playing():
		setPlaying()

func setPlaying():
	car = String(CarArt.carCode)
	
	musicPath = String("res://Resources/Music/" + car + ".mp3")
	music = load(musicPath)
	stop()
	stream = music
	play(currTime)
