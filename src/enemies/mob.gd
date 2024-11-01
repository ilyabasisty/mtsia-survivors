extends CharacterBody2D

const MOB_SPEED = 200
var health = 30

var current_enemy

@onready var player = get_node("/root/Game/Player")

func _ready() -> void:
	Global.swarm_changed.connect(setup_mob)
	setup_mob()
	%Mob.play_walk_animation()

func setup_mob():
	current_enemy = Enemies.ENEMIES[Global.select_enemy_id]
	health = current_enemy.health
	$Mob/TextureRect.texture = current_enemy.image

func _physics_process(delta: float) -> void:
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * MOB_SPEED
	move_and_slide()
	
	if direction[0] < 0:
		$Mob/TextureRect.flip_h = false
	elif direction[0] > 0:
		$Mob/TextureRect.flip_h = true


func take_damage(damage: int):
	health -= damage
	%Mob.play_hit_animation()
	
	if health <= 0:
		Global.dead_count_in_current_swarm += 1
		queue_free()
