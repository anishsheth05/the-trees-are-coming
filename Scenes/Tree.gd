extends Node2D


var width: int = 30
var height: int = 9
var SpawnMap = []


# Called when the node enters the scene tree for the first time.
func _ready():
	var temp: Array = []
	for n in range(width):
		temp.append(false)
	for n in range(height):
		SpawnMap.append(temp)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
