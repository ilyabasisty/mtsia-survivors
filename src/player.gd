extends CharacterBody2D



func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	velocity = direction * 500
	move_and_slide()