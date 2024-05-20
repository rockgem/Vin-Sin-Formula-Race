extends Sprite2D

var front
var color
var back
var sides
var direction
# Called when the node enters the scene tree for the first time.
func _ready():
	color="Red"
	front=""
	back=""
	sides=""
	direction=""
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func selected_car():
	var carCode=""
	match color:
		"Red":
			carCode+="R"
		"Blue":
			carCode+="B"
		"Green":
			carCode+="G"
		"Orange":
			carCode+="O"
		"Pink":
			carCode+="P"
	match front:
		"":
			carCode+="D"
		"FrontWing ":
			carCode+="W"
	match  back:
		"":
			carCode+="D"
		"BackWing ":
			carCode+="W"
	match sides:
		"":
			carCode+="D"
		"SideWing":
			carCode+="W"
	match direction:
		"":
			carCode+="D"
		"Reverse":
			carCode+="R"
			
	CarArt.carCode=carCode
	var carstr="res://Art/"+color+"/"+color+" - "+front+back+sides+direction
	carstr=carstr.strip_edges()
	
	CarArt.carPath=carstr+".png"
	print(CarArt.selected_car())
	return(carstr+".png")

func _on_front_wing_button_item_selected(index):
	if index==0:
		front=""
	elif index==1:
		front="FrontWing "
	self.texture=load(selected_car())


func _on_dorsal_wing_button_item_selected(index):
	if index==0:
		sides=""
	elif index==1:
		sides="SideWing"
	self.texture=load(selected_car())
	
	pass # Replace with function body.


func _on_back_wing_button_item_selected(index):
	if index==0:
		back=""
	elif index==1:
		back="BackWing "
	self.texture=load(selected_car())
	pass # Replace with function body.


func _on_color_button_item_selected(index):
	if index==0:
		color="Red"
	elif index==1:
		color="Blue"
	elif index==2:
		color="Pink"
	elif index==3:
		color="Green"
	elif index==4:
		color="Orange"
	self.texture=load(selected_car())
	pass # Replace with function body.
