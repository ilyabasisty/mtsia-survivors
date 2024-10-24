extends Button


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://src/scenes/game.tscn")


func _on_mouse_entered() -> void:
	%AudioButton.stream = PreLoader.btn_sound
	%AudioButton.play()


func _on_button_down() -> void:
	%AudioButton.stream = PreLoader.btn_down_sound
	%AudioButton.play()
