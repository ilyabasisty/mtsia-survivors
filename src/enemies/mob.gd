extends CharacterBody2D

const MOB_SPEED = 200
var max_health = 3
var health = max_health

@onready var player = get_node("/root/Game/Player")

func _ready() -> void:
	%Mob.play_walk_animation()

func _physics_process(delta: float) -> void:
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * MOB_SPEED
	move_and_slide()
	
	if direction[0] < 0:
		$Mob/TheCat.flip_h = false
	elif direction[0] > 0:
		$Mob/TheCat.flip_h = true


func take_damage():
	health -= 1
	%Mob.play_hit_animation()
	
	if health <= 0:
		queue_free()
