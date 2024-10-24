extends Button


func _on_mouse_entered() -> void:
	%AudioButton.stream = PreLoader.btn_sound
	%AudioButton.play()


func _on_button_down() -> void:
	%AudioButton.stream = PreLoader.btn_down_sound
	%AudioButton.play()
