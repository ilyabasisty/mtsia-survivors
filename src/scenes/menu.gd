extends Node2D


func _ready() -> void:
	$Control/AnimationPlayer.play("new_animation")
