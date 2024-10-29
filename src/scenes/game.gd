extends Node2D


func _ready() -> void:
	pass


func spawn_mob():
	var new_mob = preload("res://src/enemies/mob.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)


func _input(event: InputEvent) -> void:
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().change_scene_to_file("res://src/scenes/menu.tscn")


func _on_spawn_timer_timeout() -> void:
	spawn_mob()
