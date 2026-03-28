extends CharacterBody2D

const SPEED = 200

func _physics_process(delta):
	var dir = Vector2.ZERO
	
	dir.x = Input.get_axis("ui_left", "ui_right")
	dir.y = Input.get_axis("ui_up", "ui_down")
	
	velocity = dir.normalized() * SPEED
	move_and_slide()
	
	update_animation(dir)

func update_animation(dir):
	if dir == Vector2.ZERO:
		$AnimatedSprite2D.stop()
		return
	
	if abs(dir.x) > abs(dir.y):
		if dir.x > 0:
			$AnimatedSprite2D.play("right")
		else:
			$AnimatedSprite2D.play("left")
	else:
		if dir.y > 0:
			$AnimatedSprite2D.play("down")
		else:
			$AnimatedSprite2D.play("up")
