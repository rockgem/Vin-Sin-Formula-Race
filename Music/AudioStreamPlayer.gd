extends AudioStreamPlayer

var car
var musicPath
var music

# Called when the node enters the scene tree for the first time.
func _ready():
	car = String(CarArt.carCode)
	
	musicPath = String("res://Music/" + car + ".mp3")
	
	music = load(musicPath)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not is_playing():
		stream = music
		play()
