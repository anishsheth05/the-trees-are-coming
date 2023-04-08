extends RichTextLabel

var score = 0
var dead = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




func _on_TreeSpawnTimer_timeout():
	score += 1
	if not dead:
		update_score()


func update_score():
	text = "Score: " + score

func _on_Player_hit():
	dead = true
	text = ""
