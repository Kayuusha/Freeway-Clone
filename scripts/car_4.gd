extends RigidBody2D

const velocity = Vector2(11000, 0)
signal back_road4(pj: CharacterBody2D)

# Called when the node enters the scene tree for the first time.
func _ready():
	var rng = RandomNumberGenerator.new()
	match rng.randi_range(0, 2):
		0:
			$White.show()
		1:
			$Black.show()
		2:
			$Red.show()
			

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	linear_velocity = -1 * velocity * delta


func _on_area_2d_body_entered(body):
	back_road4.emit(body)


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
