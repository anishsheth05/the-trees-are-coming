extends Node2D

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var num = OS.get_ticks_msec()%3
	if num == 2:
		num = 5
	$Sprite.frame = num
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func spit():
	var seeed = load('res://Mob.tscn').instance()
	seeed.position = Vector2(8,12)
	add_child(seeed)

func _on_SeedSpitTimer_timeout():
	spit()
