extends CharacterBody2D


const SPEED = 30000.0
var move = false

func _process(delta):
	
	var direction = Input.get_axis("ui_up", "ui_down")

	if direction:
		velocity.y = direction * SPEED * delta
		$AnimatedSprite2D.play("walk")
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED*0.1 * delta) 
		if velocity.y == 0:
			$AnimatedSprite2D.play("idle")
	
	velocity.x = 0
	if move:
		move_and_slide()
