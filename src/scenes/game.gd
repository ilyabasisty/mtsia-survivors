extends Node2D

var current_enemy


func _ready() -> void:
	setup_spawned_mob()

	
func _process(delta: float) -> void:
	if Global.dead_count_in_current_swarm == Global.max_swarm_count:
		setup_spawned_mob()


func setup_spawned_mob():
	if Global.select_enemy_id < Enemies.ENEMIES.size() - 1:
		Global.select_enemy_id += 1
		Global.dead_count_in_current_swarm = 0
		Global.spawn_count_in_current_swarm = 0
		current_enemy = Enemies.ENEMIES[Global.select_enemy_id]
		Global.max_swarm_count = current_enemy.max_in_swarm
		$SpawnTimer.wait_time = current_enemy.spawn_rate
		Global.swarm_changed.emit()
	else:
		$GameOver/ColorRect/Label.text = "Молодец"
		%GameOver.visible = true
		get_tree().paused = true


func spawn_mob():
	var new_mob = preload("res://src/enemies/mob.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)
	Global.spawn_count_in_current_swarm += 1


func _input(event: InputEvent) -> void:
	if Input.is_key_pressed(KEY_ESCAPE):
		Global.select_enemy_id = -1
		get_tree().change_scene_to_file("res://src/scenes/menu.tscn")


func _on_spawn_timer_timeout() -> void:
	if (Global.spawn_count_in_current_swarm < Global.max_swarm_count):
		spawn_mob()


func _on_player_health_deplated() -> void:
	%GameOver.visible = true
	get_tree().paused = true


func _on_button_button_down() -> void:
	Global.select_enemy_id = -1
	get_tree().paused = false
	get_tree().change_scene_to_file("res://src/scenes/menu.tscn")
