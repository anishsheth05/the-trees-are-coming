extends RichTextLabel


var died = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(_delta):
	if died:
		percent_visible = (5 - $Visibility.time_left)/5


func _on_Player_hit():
	$Visibility.start()
	died = true
