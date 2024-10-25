extends Area2D

var select_weapon


func _ready() -> void:
	select_weapon = Weapons.WEAPONS[Global.select_character_id]
	%WeaponImage.texture = select_weapon.image


func _physics_process(delta: float) -> void:
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target_enemy = enemies_in_range[0]
		look_at(target_enemy.global_position)


func shoot():
	var new_bullet = select_weapon.bullet.instantiate()
	new_bullet.global_position = %WeaponAim.global_position
	new_bullet.global_rotation = %WeaponAim.global_rotation
	%WeaponAim.add_child(new_bullet)
	$AudioStreamPlayer.stream = select_weapon.sound
	$AudioStreamPlayer.play()


func _on_timer_timeout() -> void:
	shoot()
