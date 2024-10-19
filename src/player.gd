extends CharacterBody2D

const PLAYER_SPEED = 300

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	velocity = direction * PLAYER_SPEED
	move_and_slide()
	
	if direction[0] < 0:
		%Misha/MishaTheAgileMan.flip_h = true
	elif direction[0] > 0:
		%Misha/MishaTheAgileMan.flip_h = false
	
	if velocity.length() > 0.0:
		%Misha.play_walk_animation()
	else:
		%Misha.play_idle_animation()
