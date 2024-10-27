extends Node2D


func _ready() -> void:
	$AnimationPlayer.play("new_animation")


func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://src/scenes/main.tscn")
