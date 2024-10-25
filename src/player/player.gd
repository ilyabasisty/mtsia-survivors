extends CharacterBody2D

const PLAYER_SPEED = 400
var select_character


func _ready() -> void:
	
	select_character = Characters.CHARACTERS[Global.select_character_id]
	$Misha/MishaTheAgileMan.texture = select_character.image
	
	%AudioStreamPlayer.stream = PreLoader.grass_footsteps


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
		if not %AudioStreamPlayer.playing:
			%AudioStreamPlayer.play()
	else:
		%Misha.play_idle_animation()
		%AudioStreamPlayer.stop()
