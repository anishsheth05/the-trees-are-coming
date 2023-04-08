extends Node


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
	print(SpawnMap)
	$GameStartDelay.start()
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if $GameStartDelay.time_left > 0:
		pass
	else:
		if $TreeSpawnTimer.time_left == 0:
			
			$TreeSpawnTimer.start(5)
		elif true:
			pass

func spawn_away(not_here: Array):
	
	
