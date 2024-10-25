extends Node2D

func play_walk_animation():
	$AnimationPlayer.play("walk")

func play_hit_animation():
	$AnimationPlayer.play("hit")
