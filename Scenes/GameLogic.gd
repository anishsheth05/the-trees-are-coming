extends Node


var SpawnGrid = Array(Array())

# Called when the node enters the scene tree for the first time.
func _ready():
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
