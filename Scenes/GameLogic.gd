extends Node

var width: int = 30
var height: int = 9
var SpawnMap = []

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	var temp: Array = []
	for n in range(width):
		temp.append(false)
	for n in range(height):
		SpawnMap.append(temp)
	print('spawning soon')


func spawn_tree(not_here: Array):
	var tree = load('res://Scenes/Tree.tscn').instance()
	tree.position = Vector2(40,50)
	
	add_child(tree)
	


func _on_GameStartDelay_timeout():
	print('first spawn')
	spawn_tree(SpawnMap)
	$TreeSpawnTimer.start()


func _on_TreeSpawnTimer_timeout():
	print("another spawn")
	spawn_tree(SpawnMap)
