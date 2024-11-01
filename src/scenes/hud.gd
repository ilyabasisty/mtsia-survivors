extends Node2D

var current_enemy


func _ready() -> void:
	Global.swarm_changed.connect(setup_hud)
	setup_hud()

func setup_hud():
	current_enemy = Enemies.ENEMIES[Global.select_enemy_id]
	%spawn_info/name.text = current_enemy.title
	%spawn_info/max.text = str(Global.max_swarm_count)
	
	$Control/ProgressBar.max_value = Global.max_swarm_count


func _process(delta: float) -> void:
	$Control/ProgressBar.value = Global.dead_count_in_current_swarm
	%spawn_info/current.text = str(Global.dead_count_in_current_swarm)
