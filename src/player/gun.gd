extends Area2D

const BULLET = preload("res://src/player/bullet.tscn")

func _ready() -> void:
	var weapon_texture = load(Global.CHARACTERS[Global.select_character_id].weapon)
	%WeaponImage.texture = weapon_texture


func _physics_process(delta: float) -> void:
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target_enemy = enemies_in_range[0]
		look_at(target_enemy.global_position)


func shoot():
	var new_bullet = BULLET.instantiate()
	new_bullet.global_position = %WeaponAim.global_position
	new_bullet.global_rotation = %WeaponAim.global_rotation
	%WeaponAim.add_child(new_bullet)


func _on_timer_timeout() -> void:
	shoot()
