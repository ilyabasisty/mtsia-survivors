extends Button


func _on_mouse_entered() -> void:
	%AudioButton.stream = PreLoader.btn_sound
	%AudioButton.play()
