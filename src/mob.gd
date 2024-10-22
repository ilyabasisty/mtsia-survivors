extends CharacterBody2D

const MOB_SPEED = 200

@onready var player = get_node("/root/Game/Player")

func _physics_process(delta: float) -> void:
	%Mob.play_walk_animation()
	
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * MOB_SPEED
	move_and_slide()
	
	if direction[0] < 0:
		$Mob/TheCat.flip_h = false
	elif direction[0] > 0:
		$Mob/TheCat.flip_h = true
