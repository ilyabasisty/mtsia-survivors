extends CharacterBody2D

signal health_deplated

const PLAYER_SPEED = 400
const DAMAGE_RATE = 10.0
var select_character
@export var max_health = 100.0
var health = max_health

func _ready() -> void:
	
	select_character = Characters.CHARACTERS[Global.select_character_id]
	$Misha/TextureRect.texture = select_character.image
	
	%AudioStreamPlayer.stream = PreLoader.grass_footsteps


func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	velocity = direction * PLAYER_SPEED
	move_and_slide()
	
	var overlapping_mobs = %HurtBox.get_overlapping_bodies()
	if overlapping_mobs.size() > 0:
		health -= DAMAGE_RATE * overlapping_mobs.size() * delta
		%ProgressBar.value = health
		if health <= 0.0:
			health_deplated.emit()
	
	if direction[0] < 0:
		%Misha/TextureRect.flip_h = true
	elif direction[0] > 0:
		%Misha/TextureRect.flip_h = false
	
	if velocity.length() > 0.0:
		%Misha.play_walk_animation()
		if not %AudioStreamPlayer.playing:
			%AudioStreamPlayer.play()
	else:
		%Misha.play_idle_animation()
		%AudioStreamPlayer.stop()
