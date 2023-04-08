extends RigidBody2D
export var speed = 100
var velocity = Vector2.ZERO
var screen_size # Size of the game window.
func _ready():
	$AnimatedSprite.playing = true
	$AnimatedSprite.animation = "move"
	screen_size = get_viewport_rect().size
	velocity = get_parent().get_parent().get_parent().get_node("Player").position - get_position()

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	
func _process(delta):
	position += velocity * delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
