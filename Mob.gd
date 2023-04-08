extends RigidBody2D
export var speed = 200
var velocity = Vector2.ZERO
var screen_size # Size of the game window.
func _ready():
	$AnimatedSprite.playing = true
	$AnimatedSprite.animation = "move"
	screen_size = get_viewport_rect().size
	velocity = global_position.direction_to(get_parent().get_parent().get_parent().get_node("Player").position)
	self.rotation_degrees = rad2deg(velocity.angle()) + 90
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	
func _process(delta):
	position += velocity * delta * speed

