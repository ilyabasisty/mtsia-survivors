extends Area2D

func _ready() -> void:
	var weapon_texture = load(Global.CHARACTERS[Global.select_character_id].weapon)
	%WeaponImage.texture = weapon_texture


func _physics_process(delta: float) -> void:
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target_enemy = enemies_in_range[0]
		look_at(target_enemy.global_position)
