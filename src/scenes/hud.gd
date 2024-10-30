extends Node2D


func _ready() -> void:
	$Control/ProgressBar.max_value = Global.max_swarm_count
	Global.swarm_changed.connect(setup_hud)

func setup_hud():
	$Control/ProgressBar.max_value = Global.max_swarm_count


func _process(delta: float) -> void:
	$Control/ProgressBar.value = Global.dead_count_in_current_swarm
