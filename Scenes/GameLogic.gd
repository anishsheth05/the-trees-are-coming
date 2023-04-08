extends Node

var rng = RandomNumberGenerator.new()

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


func spawn_tree(not_here: Array):
	var tree = load('res://Scenes/Tree.tscn').instance()
	var row = rng.randi_range(0,8)
	var column = rng.randi_range(0,29)
	while not_here[row][column] == true:
		row = rng.randi_range(0,8)
		column = rng.randi_range(0,29)
	not_here[row][column] = true
	tree.position = Vector2(column*16,16+row*32)
	add_child(tree)
	


func _on_GameStartDelay_timeout():
	spawn_tree(SpawnMap)
	$TreeSpawnTimer.start()


func _on_TreeSpawnTimer_timeout():
	spawn_tree(SpawnMap)
